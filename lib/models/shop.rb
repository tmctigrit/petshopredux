require 'active_record'

class Shop < ActiveRecord::Base
  validates :shopname, :presence => {:message => "Shop name can't be blank."}
  validates :shopname, :uniqueness => {:message => "Shop name already exists."}
end