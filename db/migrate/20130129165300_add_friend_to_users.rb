class AddFriendToUsers < ActiveRecord::Migration
  def change
   add_column :users, :friend, :boolean, :default=>true
  end
end
