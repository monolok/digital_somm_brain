class TestablesController < ApplicationController

	def index
		@testables = Testable.all
	end

	def test
		@grapes = Grape.all

		@result = []
		i = 0
		while i < @grapes.count

			#SIGHT

			#NOSE

			#STRUCTURE
			z = 0
			while z < @grapes[i].palate_structures.count

				#STRUCURE (structure is recorded in ranges so no need to test different options)
				@if_tannin_true = @grapes[i].palate_structures[z].tannin.include?(params["tannin"].to_i)
				@if_acid_true = @grapes[i].palate_structures[z].acid.include?(params["acid"].to_i)
				@if_alcohol_true = @grapes[i].palate_structures[z].alcohol.include?(params["alcohol"].to_i)
				@if_body_true = @grapes[i].palate_structures[z].body.include?(params["body"].to_i)
				z+=1
			end

			#FLAVORS
			if not params["palate_flavors"].nil?
				zz = 0
				while zz < @grapes[i].palate_flavors.count
					
					@if_fruit_true = false
					@if_fruit_character_true = false
					@if_non_fruit_true = false
					@if_organic_earth_true = false
					@if_inorganic_earth_true = false
					@if_wood_true = false
					@if_key_true = false					

					@if_fruit_present = false
					@if_fruit_character_present = false
					@if_non_fruit_present = false
					@if_organic_earth_present = false
					@if_inorganic_earth_present = false
					@if_wood_present = false
					@if_key_present = false

					if params["palate_flavors"]["fruit"].nil? == false
						@if_fruit_present = true
						f = @grapes[i].palate_flavors[zz].fruit & params["palate_flavors"]["fruit"]
						if not f.empty? 
							if (params["palate_flavors"]["fruit"].count - 1) > f.count # -1 refer to 1 mistake tolerated
								@if_fruit_true = false
							else
								@if_fruit_true = true
							end
						end
					end

					if params["palate_flavors"]["fruit_character"].nil? == false
						@if_fruit_character_present = true
						fc = @grapes[i].palate_flavors[zz].fruit_character & params["palate_flavors"]["fruit_character"]
						if not fc.empty?
							if (params["palate_flavors"]["fruit_character"].count - 1) > fc.count # -1 refer to 1 mistake tolerated
								@if_fruit_character_true = false
							else
								@if_fruit_character_true = true
							end							
						end
					end

					if params["palate_flavors"]["non_fruit"].nil? == false
						@if_non_fruit_present = true
						nf = @grapes[i].palate_flavors[zz].non_fruit & params["palate_flavors"]["non_fruit"]
						if not nf.empty?
							@if_non_fruit_true = true
						end
					end					
					
					if params["palate_flavors"]["organic_earth"].nil? == false
						@if_organic_earth_present = true
						oe = @grapes[i].palate_flavors[zz].organic_earth & params["palate_flavors"]["organic_earth"]
						if not oe.empty?
							if (params["palate_flavors"]["organic_earth"].count - 1) > oe.count # -1 refer to 1 mistake tolerated
								@if_organic_earth_true = false
							else
								@if_organic_earth_true = true
							end
						end	
					end

					if params["palate_flavors"]["inorganic_earth"].nil? == false
						@if_inorganic_earth_present = true
						ie = @grapes[i].palate_flavors[zz].inorganic_earth & params["palate_flavors"]["inorganic_earth"]
						if not ie.empty?
							if (params["palate_flavors"]["inorganic_earth"].count - 1) > ie.count # -1 refer to 1 mistake tolerated
								@if_inorganic_earth_true = false
							else
								@if_inorganic_earth_true = true
							end			
						end
					end

					if params["palate_flavors"]["wood"].nil? == false
						@if_wood_present = true
						w = @grapes[i].palate_flavors[zz].wood & params["palate_flavors"]["wood"]
						if not w.empty?
							if (params["palate_flavors"]["wood"].count - 1) > w.count # -1 refer to 1 mistake tolerated
								@if_wood_true = false
							else
								@if_wood_true = true
							end
						end
					end

					#if params["palate_flavors"]["key"].nil? == false
					#end
	
					zz+=1
				end
			end

			#RESULTS
			if @if_tannin_true && @if_acid_true && @if_alcohol_true && @if_body_true

				y = 0
				while y < @grapes[i].testables.count
					@result << @grapes[i].testables[y].name
					y+=1
				end	

				if @if_fruit_present
					if not @if_fruit_true
						@result.pop
					end
				end	

				if @if_fruit_character_present
					if not @if_fruit_character_true
						@result.pop
					end
				end

				if @if_non_fruit_present
					if not @if_non_fruit_true
						@result.pop
					end
				end

				if @if_organic_earth_present
					if not @if_organic_earth_true
						@result.pop
					end
				end

				if @if_inorganic_earth_present
					if not @if_inorganic_earth_true
						@result.pop
					end
				end

				if @if_wood_present
					if not @if_wood_true
						@result.pop
					end
				end

				# if @if_key_present
				# 	if not @if_key_true
				# 		@result.delete(@grapes[i].testables[y].name)
				# 	end
				# end
			end
			i+=1
		end
		render json: @result 
	end

end

