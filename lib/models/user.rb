require 'active_record'

class User < ActiveRecord::Base
  validates :username, :presence => {:message => "Username can't be blank."}
  validates :username, :uniqueness => {:message => "Username already exists."}
  validates :username, :length => { in: 4..12 }
  validates :password, :presence => {:message => "Password can't be blank."}
  validates :password, :length => { :minimum => 6, :message => "Must be at least 6 characters."}

  ## WIP
  #validates :password, :format => { with: /\A[a-zA-Z]+\z/, :message => "Must have one capital and one number."}
end

## NOTE ##
# 'True' is implicit, use the :message to indicate error if something is false.
# Source: http://stackoverflow.com/questions/14451800/why-do-i-get-unknown-validator-messagevalidator
## END NOTE ##