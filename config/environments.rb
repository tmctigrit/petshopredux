require 'active_record'
require 'active_record_tasks'
require_relative 'lib/petshop.rb' #the path to our application file

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'pet_shop_redux'
  )