class CreateSpecializations < ActiveRecord::Migration[7.1]
  def change
    create_table :specializations do |t|
      t.integer :specialization_id
      t.string :title

      t.timestamps
    end
  end
end
