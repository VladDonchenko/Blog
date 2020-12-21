class Post < ApplicationRecord
	belongs_to :autor, class_name: "Person", optional: true
	has_many :comments, dependent: :destroy
	validates :name, presence: true, length: {minimum: 2}
	validates :title, presence: true, length: {minimum: 3, maximum: 20}
	validates :content, presence: true, length: {minimum: 2, maximum: 100}
end
