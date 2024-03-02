class CreateDifficulties < ActiveRecord::Migration[7.1]
  def change
    create_table :difficulties do |t|
      t.integer :difficulty_id
      t.string :title

      t.timestamps
    end
  end
end
