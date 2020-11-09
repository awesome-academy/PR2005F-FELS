class Sentence < ApplicationRecord
	belongs_to :lesson
	has_many :answers
	has_many :questions
	
end
