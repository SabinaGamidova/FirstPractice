class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.integer :address_id
      t.string :city
      t.string :street
      t.string :build

      t.timestamps
    end
  end
end
