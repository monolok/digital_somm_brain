class PalateStructure < ApplicationRecord
	has_and_belongs_to_many :grapes
	serialize :sweetness
	serialize :phenolic
	serialize :body
    serialize :alcohol
	serialize :acid
	serialize :tannin
	serialize :texture
	serialize :balance
	serialize :length
	serialize :complexity

end
