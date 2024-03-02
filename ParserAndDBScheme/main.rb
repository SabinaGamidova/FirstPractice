require 'csv'
require 'open-uri'
require 'nokogiri'

html = URI.open('https://www.nerdwallet.com/article/small-business/service-business-ideas').read
doc = Nokogiri::HTML(html)

spans = doc.css('ol span.DFVVwC._3-to_p')
#spans = doc.css('ol span') #another equal variant 

CSV.open('services_list.csv', 'w') do |csv|
  csv << ['ID', 'Services']
  spans_to_write = spans.drop(15)
  spans_to_write.each_with_index do |text, index|
    csv << [index + 1, text]
  end
end

puts "Data successfully saved to file services_list.csv"