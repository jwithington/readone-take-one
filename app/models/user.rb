class User < ActiveRecord::Base
	has_many :feeds
	before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	#from odot for generating passwords
	# def generate_password_reset_token!
	# 	update_attribute(:password_reset_token, SecureRandom.urlsafe_base64(48))
	#  end
	has_secure_password
	validates :password, length: { minimum: 6 }
end