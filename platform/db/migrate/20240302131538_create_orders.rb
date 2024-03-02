class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :status
      t.integer :client
      t.integer :comment
      t.integer :employee
      t.integer :urgency
      t.datetime :date_order
      t.integer :service
      t.float :price

      t.timestamps
    end
  end
end
