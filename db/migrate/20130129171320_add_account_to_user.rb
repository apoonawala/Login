class AddAccountToUser < ActiveRecord::Migration
  def change
    add_column :users, :account, :boolean, :default=>false
  end
end
