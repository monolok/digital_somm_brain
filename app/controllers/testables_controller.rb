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
			s = 0
			while s < @grapes[i].sight.count
				@if_clarity_true = @grapes[i].sight[s].clarity.include?(params["sight"]["clarity"].to_i)
				@if_brightness_true = @grapes[i].sight[s].brightness.include?(params["sight"]["brightness"].to_i)
				@if_concentration_true = @grapes[i].sight[s].concentration.include?(params["sight"]["concentration"].to_i)
				@if_color_white_true = @grapes[i].sight[s].color_white.include?(params["sight"]["color_white"].to_i)
				#params["sight"]["color_red"]
				#params["sight"]["staining"] 
				#params["sight"]["tears"]

				#CHECK BOX
				#params["sight"]["gas"]
				#params["sight"]["sediment"]
				#params["sight"]["rim"]
				s+=1
			end

			#NOSE
			#params["nose"]["intensity"]
			#params["nose"]["fruit"]
			#params["nose"]["fruit_character"]
			#params["nose"]["non_fruit"]
			#params["nose"]["organic_earth"]
			#params["nose"]["inorganic_earth"]
			#params["nose"]["wood"]

			#STRUCTURE
			z = 0
			while z < @grapes[i].palate_structures.count

				#STRUCURE (structure is recorded in ranges so no need to test different options)
				@if_tannin_true = @grapes[i].palate_structures[z].tannin.include?(params["palate_structures"]["tannin"].to_i)
				@if_acid_true = @grapes[i].palate_structures[z].acid.include?(params["palate_structures"]["acid"].to_i)
				@if_alcohol_true = @grapes[i].palate_structures[z].alcohol.include?(params["palate_structures"]["alcohol"].to_i)
				@if_body_true = @grapes[i].palate_structures[z].body.include?(params["palate_structures"]["body"].to_i)
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

