class Autor < ApplicationRecord
	has_secure_password  
	validates_uniqueness_of :email
  has_many :posts
  has_many :comments


  def full_name
    "#{self.first_name} #{self.last_name} "
  end
end
