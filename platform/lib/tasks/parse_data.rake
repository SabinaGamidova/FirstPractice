namespace :parse do
  desc "Parse data from the website and save it to the database"
  task :services_data => :environment do
   
    require 'open-uri'
    require 'nokogiri'
    
    html = URI.open('https://www.nerdwallet.com/article/small-business/service-business-ideas').read
    doc = Nokogiri::HTML(html)
    
    current_h2 = nil
    first_h2_processed = false
    
    doc.traverse do |node|
      h2Header = node.name == 'h2' && node['class'] == '_3P4ktl zeCuXk DFVVwC _1My7YX'
      h3Header = node.name == 'h3' && node['class'] == '_21EZtY eHXiWO _3_uGsM DFVVwC _1My7YX'
    
      if h2Header || h3Header
        if !first_h2_processed
          first_h2_processed = true
          next
        end
        current_h2 = node.text.strip
      end
    
      if node.name == 'ol' && node.at_css('span.DFVVwC._3-to_p') && current_h2
        list_content = node.css('span.DFVVwC._3-to_p').map(&:text)
        list_content.each do |item|
          Service.find_or_create_by(title: item.strip, service_type: current_h2)
        end
        current_h2 = nil
      end
    end

  end
end


namespace :db do
  desc "Clear the services table"
  task clear_services: :environment do
    Service.destroy_all
    # puts "Services table has been cleared"
  end
end


