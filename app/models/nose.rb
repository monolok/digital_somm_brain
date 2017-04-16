class Nose < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :intensity
end
