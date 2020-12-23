class Comment < ApplicationRecord
	belongs_to :post, required: true 
	belongs_to :autor, required: true
	enum status: [ :unpublished, :published ]
	validates :body, presence: true, length: { minimum: 5 }
end
