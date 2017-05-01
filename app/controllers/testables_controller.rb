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
			while s < @grapes[i].sights.count

				@if_concentration_present = false
				@if_color_white_present = false
				@if_color_red_present = false

				#@if_clarity_true = @grapes[i].sights[s].clarity.include?(params["sight"]["clarity"].to_i)
				#@if_brightness_true = @grapes[i].sights[s].brightness.include?(params["sight"]["brightness"].to_i)
				if params["sight"]["concentration"].to_i != 0
					@if_concentration_present = true
					@if_concentration_true = @grapes[i].sights[s].concentration.include?(params["sight"]["concentration"].to_i)
				end
				
				if params["sight"]["color_white"].to_i != 0
					@if_color_white_present = true
					@if_color_white_true = @grapes[i].sights[s].color.include?(params["sight"]["color_white"].to_i)
				end
				
				if params["sight"]["color_red"].to_i != 0
					@if_color_red_present = true
					@if_color_red_true = @grapes[i].sights[s].color.include?(params["sight"]["color_red"].to_i)
				end
				#@if_staining_true = @grapes[i].sights[s].staining.include?(params["sight"]["staining"].to_i)
				#@if_tears_true = @grapes[i].sights[s].tears.include?(params["sight"]["tears"].to_i)
				# if params["sight"]["gas"] && @grapes[i].sights[s].gas
				# 	@if_gas_true = true
				# end
				# if params["sight"]["sediment"] && @grapes[i].sights[s].sediment
				# 	@if_sediment_true = true
				# end
				# if params["sight"]["rim"] && @grapes[i].sights[s].rim
				# 	@if_rim_true = true
				# end
				s+=1
			end

			#NOSE
			if not params["nose"].nil?
				n = 0
				while n < @grapes[i].noses.count
					
					@if_intensity_nose_true = false
					@if_fruit_nose_true = false
					@if_fruit_character_nose_true = false
					@if_non_fruit_nose_true = false
					@if_organic_earth_nose_true = false
					@if_inorganic_earth_nose_true = false
					@if_wood_nose_true = false

					@if_intensity_nose_present = false
					@if_fruit_nose_present = false
					@if_fruit_character_nose_present = false
					@if_non_fruit_nose_present = false
					@if_organic_earth_nose_present = false
					@if_inorganic_earth_nose_present = false
					@if_wood_nose_present = false

					if params["nose"]["intensity"].nil? == false
						@if_intensity_nose_present = true
						ni = @grapes[i].noses[n].intensity & params["nose"]["intensity"]
						if not ni.empty? 
							if params["nose"]["intensity"].count > ni.count #no mistakes tolerated
								@if_intensity_nose_true = false
							else
								@if_intensity_nose_true = true
							end
						end
					end

					if params["nose"]["fruit"].nil? == false
						@if_fruit_nose_present = true
						fn = @grapes[i].noses[n].fruit & params["nose"]["fruit"]
						if not fn.empty? 
							if (params["nose"]["fruit"].count - 1) > fn.count # -1 refer to 1 mistake tolerated
								@if_fruit_nose_true = false
							else
								@if_fruit_nose_true = true
							end
						end
					end

					if params["nose"]["fruit_character"].nil? == false
						@if_fruit_character_nose_present = true
						fcn = @grapes[i].noses[n].fruit_character & params["nose"]["fruit_character"]
						if not fcn.empty? 
							if (params["nose"]["fruit_character"].count - 1) > fcn.count # -1 refer to 1 mistake tolerated
								@if_fruit_character_nose_true = false
							else
								@if_fruit_character_nose_true = true
							end
						end
					end

					if params["nose"]["non_fruit"].nil? == false
						@if_non_fruit_nose_present = true
						nfn = @grapes[i].noses[n].non_fruit & params["nose"]["non_fruit"]
						if not nfn.empty? 
							if (params["nose"]["non_fruit"].count - 1) > nfn.count # -1 refer to 1 mistake tolerated
								@if_non_fruit_nose_true= false
							else
								@if_non_fruit_nose_true = true
							end
						end
					end

					if params["nose"]["organic_earth"].nil? == false
						@if_organic_earth_nose_present = true
						oen = @grapes[i].noses[n].organic_earth & params["nose"]["organic_earth"]
						if not oen.empty? 
							if (params["nose"]["organic_earth"].count - 1) > oen.count # -1 refer to 1 mistake tolerated
								@if_organic_earth_nose_true = false
							else
								@if_organic_earth_nose_true = true
							end
						end
					end

					if params["nose"]["inorganic_earth"].nil? == false
						@if_inorganic_earth_nose_present = true
						ien = @grapes[i].noses[n].inorganic_earth & params["nose"]["inorganic_earth"]
						if not ien.empty? 
							if (params["nose"]["inorganic_earth"].count - 1) > ien.count # -1 refer to 1 mistake tolerated
								@if_inorganic_earth_nose_true = false
							else
								@if_inorganic_earth_nose_true = true
							end
						end
					end

					if params["nose"]["wood"].nil? == false
						@if_wood_nose_present = true
						wn = @grapes[i].noses[n].wood & params["nose"]["wood"]
						if not wn.empty? 
							if (params["nose"]["wood"].count - 1) > wn.count # -1 refer to 1 mistake tolerated
								@if_wood_nose_true = false
							else
								@if_wood_nose_true = true
							end
						end
					end

					n+=1
				end
			end

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

			#RESULTS WHEN STRUCURE IS TRUE
			if @if_tannin_true && @if_acid_true && @if_alcohol_true && @if_body_true				

			#RESULT FOR STRUCTURE - PRIORITY
				y = 0
				while y < @grapes[i].testables.count
					@result << @grapes[i].testables[y].name
					y+=1
				end	

			#RESULT FOR SIGHT

				if @if_concentration_present
					if not @if_concentration_true
						@result.pop
					end
				end


				if @if_color_white_present || @if_color_red_present
					if not @if_color_white_true || @if_color_red_true
						@result.pop
					end
				end

			#RESULT FOR NOSE
				if @if_intensity_nose_present
					if not @if_intensity_nose_true
						@result.pop
					end
				end

				if @if_fruit_nose_present
					if not @if_fruit_nose_true
						@result.pop
					end
				end	

				if @if_fruit_character_nose_present
					if not @if_fruit_character_nose_true
						@result.pop
					end
				end

				if @if_non_fruit_nose_present
					if not @if_non_fruit_nose_true
						@result.pop
					end
				end

				if @if_organic_earth_nose_present
					if not @if_organic_earth_nose_true
						@result.pop
					end
				end

				if @if_inorganic_earth_nose_present
					if not @if_inorganic_earth_nose_true
						@result.pop
					end
				end

				if @if_wood_nose_present
					if not @if_wood_nose_true
						@result.pop
					end
				end

			#RESULT FOR PALATE FLAVORS
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

