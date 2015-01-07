class CreateShops < ActiveRecord::Migration
  def change
    # TODO
    create_table :shops do |t|
    t.string :shopname
    end
   add_index :shops, :shopname, :unique => true
  end
end
