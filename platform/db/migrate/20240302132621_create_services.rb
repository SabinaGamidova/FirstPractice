class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.integer :service_id
      t.integer :species
      t.integer :difficulty

      t.timestamps
    end
  end
end
