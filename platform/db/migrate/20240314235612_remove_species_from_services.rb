class RemoveSpeciesFromServices < ActiveRecord::Migration[7.1]
  def change
    remove_column :services, :species, :integer
  end
end
