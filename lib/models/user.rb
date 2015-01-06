class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { in: 4..12 }
  validates :password, presence: true
  validates :password, :with => /^(?=.\d)(?=.([a-z]|[A-Z]))([\x20-\x7E]){6,40}$/, :if => :require_password?, :message => "must include one number, one letter and be between 6 and 40 characters"
end