class CreateSpecies < ActiveRecord::Migration[7.1]
  def change
    create_table :species do |t|
      t.integer :species_id
      t.string :title
      t.integer :type

      t.timestamps
    end
  end
end
