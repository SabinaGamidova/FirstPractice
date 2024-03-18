class RemoveTypeFromServices < ActiveRecord::Migration[7.1]
  def change
    remove_column :services, :type
  end
end
