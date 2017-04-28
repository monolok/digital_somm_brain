class Sight < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :clarity
	serialize :brightness
	serialize :concentration
	serialize :color
	serialize :secondary_colors
	serialize :staining
	serialize :tears
	serialize :gas
	serialize :sediment
	serialize :rim
end