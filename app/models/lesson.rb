class Lesson < ApplicationRecord
	belongs_to :user
	has_many :sentence
end
