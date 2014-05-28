class User < ActiveRecord::Base
  before_create :create_remember_token

  attr_accessible :username, :password, :password_confirmation
  validates :username, presence: true, length: { maximum: 50 }
  has_secure_password
  validates :password, length: { minimum: 6 }

  has_many :user_beliefs
  has_many :beliefs, :through => :user_beliefs

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end

end
