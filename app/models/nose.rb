class Nose < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :clean
	serialize :intensity
	serialize :age
	serialize :fruit
	serialize :fruit_character
	serialize :non_fruit
	serialize :organic_earth
	serialize :inorganic_earth
	serialize :wood		

end
