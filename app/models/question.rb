class Question < ApplicationRecord
	belongs_to :poll, optional: true
	has_many :choices
	accepts_nested_attributes_for :choices
end