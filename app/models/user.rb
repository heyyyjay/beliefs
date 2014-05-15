class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  validates :username, presence: true, length: { maximum: 50 }
  has_secure_password
  validates :password, length: { minimum: 6 }
end
