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
				#STRUCURE (structure is recorded in ranges so no need to test different options)
				@if_tannin_true = @grapes[i].palate_structures[z].tannin.include?(params["tannin"].to_i)
				@if_acid_true = @grapes[i].palate_structures[z].acid.include?(params["acid"].to_i)
				@if_alcohol_true = @grapes[i].palate_structures[z].alcohol.include?(params["alcohol"].to_i)
				@if_body_true = @grapes[i].palate_structures[z].body.include?(params["body"].to_i)

				#FLAVOR
				if not params["palate_flavors"].nil?

					if params["palate_flavors"]["fruit"].nil? == false
						f = @grapes[i].palate_flavors[z].fruit & params["palate_flavors"]["fruit"]
						if not f.empty?
							@if_fruit_true = true
						end
						#FIGURE OUT what happen if 3 true and 2 false ?  
						#for 1 true and any false @if_fruit_true will remain TRUE, it is a PB
						# play with variable f which return array ONLY with checked box value that are coorect
					end

					if params["palate_flavors"]["fruit_character"].nil? == false
						fc = @grapes[i].palate_flavors[z].fruit_character & params["palate_flavors"]["fruit_character"]
						if not fc.empty?
							@if_fruit_character_true = true
						end
					end

					if params["palate_flavors"]["non_fruit"].nil? == false
						nf = @grapes[i].palate_flavors[z].non_fruit & params["palate_flavors"]["non_fruit"]
						if not nf.empty?
							@if_non_fruit_true = true
						end
					end					
					
					if params["palate_flavors"]["organic_earth"].nil? == false
						oe = @grapes[i].palate_flavors[z].organic_earth & params["palate_flavors"]["organic_earth"]
						if not nf.empty?
							@if_organic_earth_true = true
						end	
					end

					if params["palate_flavors"]["inorganic_earth"].nil? == false
						ie = @grapes[i].palate_flavors[z].inorganic_earth & params["palate_flavors"]["inorganic_earth"]
						if not nf.empty?
							@if_inorganic_earth_true = true			
						end
					end

					if params["palate_flavors"]["wood"].nil? == false
						w = @grapes[i].palate_flavors[z].wood & params["palate_flavors"]["wood"]
						if not nf.empty?
							@if_wood_true = true
						end
					end

					#if params["palate_flavors"]["key"].nil? == false
						#FIGURE OUT WHAT TO DO WITH KEY MARKER
					#end
					
				end
				
				#RESULT: FIGURE OUT HOW TO RUN THIS, EVEN WHEN FRUIT, NON FRUIT... ARE NOT PRESENT
				if @if_tannin_true && @if_acid_true && @if_alcohol_true && @if_body_true && @if_fruit_true && @if_fruit_character_true #&& @if_non_fruit_true && @if_organic_earth_true && @if_inorganic_earth_true && @if_wood_true
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

