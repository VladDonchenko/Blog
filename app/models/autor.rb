class Autor < ApplicationRecord
	has_secure_password  
	validates_uniqueness_of :email
  has_many :posts
  has_many :comments

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
PASSWORD_FORMAT = /\A
    (?=\\S+$)       # Must not have any blank spaces
    (?=.{8,})           # Must contain 8 or more characters
    (?=.*[A-Z])         # Must contain an upper case character
    (?=.*[[:^alnum:]])  # Must contain a symbol
  /x

  validates :password_digest, presence: true, format: { with: PASSWORD_FORMAT }
  validates :email, presence: true, length: { minimum: 5, maximum: 50 },format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }

  def full_name
    "#{self.first_name} #{self.last_name} "
  end
end
