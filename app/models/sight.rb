class Sight < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :color
end
