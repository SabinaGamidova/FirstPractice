class RemoveEmailAndPasswordFromClients < ActiveRecord::Migration[7.1]
  def change
    remove_column :clients, :email
    remove_column :clients, :password
  end
end