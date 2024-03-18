class AddTitleToServices < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :title, :string
  end
end
