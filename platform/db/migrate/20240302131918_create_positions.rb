class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.integer :position_id
      t.string :title

      t.timestamps
    end
  end
end
