class TestablesController < ApplicationController

	def index	
	end

	def test
		@grapes = Grape.all
		
		#@test = {}
		#@test["tannin"] = params["tannin"]
		#@test["acid"] = params["acid"]
		#@test["alcohol"] = params["alcohol"]
		#@test["body"] = params["body"]
		#@test["palate_flavors"] = params["palate_flavors"]

		@result = []
		i = 0
		while i < @grapes.count
			z = 0
			while z < @grapes[i].palate_structures.count
				if_tannin_true = @grapes[i].palate_structures[z].tannin.include?(params["tannin"])
				if_acid_true = @grapes[i].palate_structures[z].acid.include?(params["acid"])
				if_alcohol_true = @grapes[i].palate_structures[z].alcohol.include?(params["alcohol"])
				if_body_true = @grapes[i].palate_structures[z].body.include?(params["body"])
				if if_tannin_true && if_acid_true && if_alcohol_true && if_body_true
					@result << @grapes[i].testables
				end
				z+=1
			end
			i+=1
		end
		
		render json: @result 
	end

end

