class Post < ApplicationRecord
	validates :name, presence: true, length: {minimum: 2}
	validates :title, presence: true, length: {minimum: 3, maximum: 20}
	validates :content, presence: true, length: {minimum: 2, maximum: 100}
	validates :image, presence: true, length: {minimum: 2}
end
