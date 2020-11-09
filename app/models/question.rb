class Question < ApplicationRecord
	belongs_to :sentence
	belongs_to :category
	has_many :answer
end
