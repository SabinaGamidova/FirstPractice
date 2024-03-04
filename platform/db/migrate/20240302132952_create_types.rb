class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.integer :type_id
      t.string :title

      t.timestamps
    end
  end
end
