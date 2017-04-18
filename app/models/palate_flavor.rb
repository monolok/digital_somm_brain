class PalateFlavor < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :fruit
    serialize :fruit_character
    serialize :non_fruit
    serialize :organic_earth
    serialize :inorganic_earth
    serialize :wood

end
