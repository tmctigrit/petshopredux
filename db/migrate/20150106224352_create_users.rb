class CreateUsers < ActiveRecord::Migration
  def change
    # TODO
     create_table :users do |t|
      t.string :username
      t.string :password
    end
  add_index :users, :username, :unique => true
  end
end

