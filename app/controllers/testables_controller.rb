class TestablesController < ApplicationController

	def index	
	end

	def test
		@grapes = Grape.all

		@result = []
		i = 0
		while i < @grapes.count
			z = 0
			while z < @grapes[i].palate_structures.count
				if_tannin_true = @grapes[i].palate_structures[z].tannin.include?(params["tannin"].to_i)
				if_acid_true = @grapes[i].palate_structures[z].acid.include?(params["acid"].to_i)
				if_alcohol_true = @grapes[i].palate_structures[z].alcohol.include?(params["alcohol"].to_i)
				if_body_true = @grapes[i].palate_structures[z].body.include?(params["body"].to_i)
				if if_tannin_true && if_acid_true && if_alcohol_true && if_body_true
					y = 0
					while y < @grapes[i].testables.count
						@result << @grapes[i].testables[y].name
						y+=1
					end
				end
				z+=1
			end
			i+=1
		end
		puts "here is the #{params["palate_flavors"]}"
		render json: @result 
	end

end

