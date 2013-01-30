class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :photo_url
      t.string :email
      t.string :password
      t.string :fname
      t.string :lname
      t.timestamps
    end
  end
end
