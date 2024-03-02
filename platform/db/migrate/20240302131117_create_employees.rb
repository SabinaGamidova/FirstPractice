class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :phone
      t.string :email
      t.datetime :date_registration
      t.integer :position
      t.integer :specialization
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
