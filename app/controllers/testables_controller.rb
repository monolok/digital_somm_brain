class TestablesController < ApplicationController

	def index
		@testables = Testable.all
	end

	def test
		@grapes = Grape.all

		@result = []
		i = 0
		while i < @grapes.count
			z = 0
			while z < @grapes[i].palate_structures.count
				#STRUCURE: structure is recorded in ranges so no need to test different options
				@if_tannin_true = @grapes[i].palate_structures[z].tannin.include?(params["tannin"].to_i)
				@if_acid_true = @grapes[i].palate_structures[z].acid.include?(params["acid"].to_i)
				@if_alcohol_true = @grapes[i].palate_structures[z].alcohol.include?(params["alcohol"].to_i)
				@if_body_true = @grapes[i].palate_structures[z].body.include?(params["body"].to_i)

				#FLAVOR: check how many flavors checked are similar with @grapes[i].palate_flavors[z] in database to define true
				a = 0
				if not params["palate_flavors"].nil?
					while a < params["palate_flavors"].count
						if @grapes[i].palate_flavors[z].fruit.include?(params["palate_flavors"][a])
							@if_fruit_true = true

							#FIGURE OUT what happen if 3 true and 2 false ?  
							#for 1 true and any false @if_fruit_true will remain TRUE, it is a PB

						elsif true#@grapes[i].palate_flavors[z].fruit_character.include?(params["palate_flavors"][a])
							@if_fruit_character_true = true
						elsif true#@grapes[i].palate_flavors[z].non_fruit.include?(params["palate_flavors"][a])
							@if_non_fruit_true = true
						elsif true#@grapes[i].palate_flavors[z].organic_earth.include?(params["palate_flavors"][a])
							@if_organic_earth_true = true
						elsif true#@grapes[i].palate_flavors[z].inorganic_earth.include?(params["palate_flavors"][a])
							@if_inorganic_earth_true = true			
						elsif true#@grapes[i].palate_flavors[z].wood.include?(params["palate_flavors"][a])
							@if_wood_true = true
						else
							
						end
						a+=1
					end
				end
				puts "grape #{@grapes[i].name} has fruit #{params["palate_flavors"]}? #{@if_fruit_true}"

				#FIGURE OUT HOW TO INTEGRATE KEY_MARKER ELEMENT

				#RESULT
				if @if_tannin_true && @if_acid_true && @if_alcohol_true && @if_body_true && @if_fruit_true #&& @if_fruit_character_true && @if_non_fruit_true && @if_organic_earth_true && @if_inorganic_earth_true && @if_wood_true
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
		render json: @result 
	end

end

