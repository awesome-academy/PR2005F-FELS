class Answer < ApplicationRecord
	belongs_to :sentence
	belongs_to :question
end
