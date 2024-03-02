class CreateUrgencies < ActiveRecord::Migration[7.1]
  def change
    create_table :urgencies do |t|
      t.integer :urgency_id
      t.string :title

      t.timestamps
    end
  end
end
