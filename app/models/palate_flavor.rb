class PalateFlavor < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :fruit
end
