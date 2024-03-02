class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.integer :client_id
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :phone
      t.string :email
      t.integer :address
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
