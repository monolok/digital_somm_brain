class Grape < ApplicationRecord
	has_many :testables
	has_many :sights
	has_many :noses
	has_many :palate_flavors
	has_many :palate_structures		
end
