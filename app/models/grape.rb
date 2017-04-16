class Grape < ApplicationRecord
	has_many :testables
	has_and_belongs_to_many :sights
	has_and_belongs_to_many :noses
	has_and_belongs_to_many :palate_flavors
	has_and_belongs_to_many :palate_structures		
end
