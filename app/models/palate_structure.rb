class PalateStructure < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :body
    serialize :alcohol
	serialize :acid
	serialize :tannin

end
