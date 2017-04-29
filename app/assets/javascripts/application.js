// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-slider
//= require_tree .

$(document).ready(function(){
	
$("#show_sight_div").hide();
$("#show_nose_div").hide();
$("#show_flavor_div").hide();
$("#show_structure_div").hide();
$("#show_wines_div").hide();

	$(".nav_li").click(function(){
		$(".nav_li").removeClass("active");
		$(this).addClass("active");
		var id = this.id+"_div";
		$("#show_sight_div").hide();
		$("#show_nose_div").hide();
		$("#show_flavor_div").hide();
		$("#show_structure_div").hide();
		$("#show_wines_div").hide();
		$("#"+id).show();
	});



//START OF #CHANGE
	$("#change").change(function() {

//sight
		var sight = {};
		sight["clarity"] = document.getElementById("clarity").value;
		sight["brightness"] = document.getElementById("brightness").value;
		sight["concentration"] = document.getElementById("concentration").value;
		sight["color_white"] = document.getElementById("color_white").value;
		sight["color_red"] = document.getElementById("color_red").value;
		sight["staining"] = document.getElementById("staining").value;
		sight["tears"] = document.getElementById("tears").value;
		if (document.getElementById("gas_exist").checked) { sight["gas"] = true};
		if (document.getElementById("sediment_exist").checked) { sight["sediment"] = true};
		if (document.getElementById("rim_exist").checked) { sight["rim"] = true };

//nose
		var nose = {};
		var nose_intensity = [];
		var nose_fruit = [];
		var nose_fruit_character = [];
		var nose_non_fruit = [];
		var nose_organic_earth = [];
		var nose_inorganic_earth = [];
		var nose_wood = [];

		if (document.getElementById("delicate_nose_exist").checked) { nose_intensity.push("delicate")};
		if (document.getElementById("moderate_nose_exist").checked) { nose_intensity.push("moderate")};
		if (document.getElementById("powerful_nose_exist").checked) { nose_intensity.push("powerful")};
		nose["intensity"] = nose_intensity;

		if (document.getElementById("citrus_nose_exist").checked) { nose_fruit.push("citrus")};
		if (document.getElementById("apple_pear_nose_exist").checked) { nose_fruit.push("apple/Pear")};
		if (document.getElementById("stone_pit_nose_exist").checked) { nose_fruit.push("stone/Pit")};
		if (document.getElementById("tropical_nose_exist").checked) { nose_fruit.push("tropical")};
		if (document.getElementById("melon_nose_exist").checked) { nose_fruit.push("melon")};
		
		if (document.getElementById("red_nose_exist").checked) { nose_fruit.push("red")};
		if (document.getElementById("black_nose_exist").checked) { nose_fruit.push("black")};
		if (document.getElementById("blue_nose_exist").checked) { nose_fruit.push("blue")};
		nose["fruit"] = nose_fruit;

		if (document.getElementById("baked_nose_exist").checked) { nose_fruit_character.push("baked")};
		if (document.getElementById("stewed_nose_exist").checked) { nose_fruit_character.push("stewed")};
		if (document.getElementById("dried_nose_exist").checked) { nose_fruit_character.push("dried")};
		if (document.getElementById("peels_nose_exist").checked) { nose_fruit_character.push("peels")};
		if (document.getElementById("desiccated_nose_exist").checked) { nose_fruit_character.push("desiccated")};
		if (document.getElementById("tart_nose_exist").checked) { nose_fruit_character.push("tart")};
		if (document.getElementById("jammy_nose_exist").checked) { nose_fruit_character.push("jammy")};
		nose["fruit_character"] = nose_fruit_character;

		if (document.getElementById("floral_nose_exist").checked) { nose_non_fruit.push("floral")};
		if (document.getElementById("vegetal_nose_exist").checked) { nose_non_fruit.push("vegetal")};
		if (document.getElementById("herbal_nose_exist").checked) { nose_non_fruit.push("herbal")};
		if (document.getElementById("spice_nose_exist").checked) { nose_non_fruit.push("spice")};
		if (document.getElementById("petrol_nose_exist").checked) { nose_non_fruit.push("petrol")};
		if (document.getElementById("animal_nose_exist").checked) { nose_non_fruit.push("animal")};
		if (document.getElementById("barn_nose_exist").checked) { nose_non_fruit.push("barn")};
		if (document.getElementById("fermentation_nose_exist").checked) { nose_non_fruit.push("fermentation")};
		nose["non_fruit"] = nose_non_fruit;
		
		if (document.getElementById("forest_floor_nose_exist").checked) { nose_organic_earth.push("forest Floor")};
		if (document.getElementById("compost_nose_exist").checked) { nose_organic_earth.push("compost")};
		if (document.getElementById("mushrooms_nose_exist").checked) { nose_organic_earth.push("mushrooms")};
		if (document.getElementById("potting_soil_nose_exist").checked) { nose_organic_earth.push("potting Soil")};
		nose["organic_earth"] = nose_organic_earth;

		if (document.getElementById("mineral_nose_exist").checked) { nose_inorganic_earth.push("mineral")};
		if (document.getElementById("wet_rock_nose_exist").checked) { nose_inorganic_earth.push("wet Rock")};
		if (document.getElementById("limestone_nose_exist").checked) { nose_inorganic_earth.push("limestone")};
		if (document.getElementById("chalk_nose_exist").checked) { nose_inorganic_earth.push("chalk")};
		if (document.getElementById("slate_nose_exist").checked) { nose_inorganic_earth.push("slate")};
		if (document.getElementById("flint_nose_exist").checked) { nose_inorganic_earth.push("flint")};
		nose["inorganic_earth"] = nose_inorganic_earth;

		if (document.getElementById("old_nose_exist").checked) { nose_wood.push("old")};
		if (document.getElementById("new_nose_exist").checked) { nose_wood.push("new")};
		if (document.getElementById("large_nose_exist").checked) { nose_wood.push("large")};
		if (document.getElementById("small_nose_exist").checked) { nose_wood.push("small")};
		if (document.getElementById("french_nose_exist").checked) { nose_wood.push("french")};
		if (document.getElementById("american_nose_exist").checked) { nose_wood.push("american")};
		if (document.getElementById("no_wood_nose_exist").checked) { nose_wood.push("no wood")};
		nose["wood"] = nose_wood;

//palate_structures data
		var palate_structures = {};
		palate_structures["tannin"] = document.getElementById("tannin").value;
		palate_structures["acid"] = document.getElementById("acid").value;
		palate_structures["alcohol"] = document.getElementById("alcohol").value;
		palate_structures["body"] = document.getElementById("body").value;


//palate_flavors data
		var palate_flavors = {};
		var palate_flavors_fruit = [];
		var palate_flavors_fruit_character = [];
		var palate_flavors_non_fruit = [];
		var palate_flavors_organic_earth = [];
		var palate_flavors_inorganic_earth = [];
		var palate_flavors_wood = [];
		var palate_flavors_key = [];

		if (document.getElementById("citrus_exist").checked) { palate_flavors_fruit.push("citrus")};
		if (document.getElementById("apple_pear_exist").checked) { palate_flavors_fruit.push("apple/Pear")};
		if (document.getElementById("stone_pit_exist").checked) { palate_flavors_fruit.push("stone/Pit")};
		if (document.getElementById("tropical_exist").checked) { palate_flavors_fruit.push("tropical")};
		if (document.getElementById("melon_exist").checked) { palate_flavors_fruit.push("melon")};
		
		if (document.getElementById("red_exist").checked) { palate_flavors_fruit.push("red")};
		if (document.getElementById("black_exist").checked) { palate_flavors_fruit.push("black")};
		if (document.getElementById("blue_exist").checked) { palate_flavors_fruit.push("blue")};
		palate_flavors["fruit"] = palate_flavors_fruit;

		if (document.getElementById("baked_exist").checked) { palate_flavors_fruit_character.push("baked")};
		if (document.getElementById("stewed_exist").checked) { palate_flavors_fruit_character.push("stewed")};
		if (document.getElementById("dried_exist").checked) { palate_flavors_fruit_character.push("dried")};
		if (document.getElementById("peels_exist").checked) { palate_flavors_fruit_character.push("peels")};
		if (document.getElementById("desiccated_exist").checked) { palate_flavors_fruit_character.push("desiccated")};
		if (document.getElementById("tart_exist").checked) { palate_flavors_fruit_character.push("tart")};
		if (document.getElementById("jammy_exist").checked) { palate_flavors_fruit_character.push("jammy")};
		palate_flavors["fruit_character"] = palate_flavors_fruit_character;

		if (document.getElementById("floral_exist").checked) { palate_flavors_non_fruit.push("floral")};
		if (document.getElementById("vegetal_exist").checked) { palate_flavors_non_fruit.push("vegetal")};
		if (document.getElementById("herbal_exist").checked) { palate_flavors_non_fruit.push("herbal")};
		if (document.getElementById("spice_exist").checked) { palate_flavors_non_fruit.push("spice")};
		if (document.getElementById("petrol_exist").checked) { palate_flavors_non_fruit.push("petrol")};
		if (document.getElementById("animal_exist").checked) { palate_flavors_non_fruit.push("animal")};
		if (document.getElementById("barn_exist").checked) { palate_flavors_non_fruit.push("barn")};
		if (document.getElementById("fermentation_exist").checked) { palate_flavors_non_fruit.push("fermentation")};
		palate_flavors["non_fruit"] = palate_flavors_non_fruit;
		
		if (document.getElementById("forest_floor_exist").checked) { palate_flavors_organic_earth.push("forest Floor")};
		if (document.getElementById("compost_exist").checked) { palate_flavors_organic_earth.push("compost")};
		if (document.getElementById("mushrooms_exist").checked) { palate_flavors_organic_earth.push("mushrooms")};
		if (document.getElementById("potting_soil_exist").checked) { palate_flavors_organic_earth.push("potting Soil")};
		palate_flavors["organic_earth"] = palate_flavors_organic_earth;

		if (document.getElementById("mineral_exist").checked) { palate_flavors_inorganic_earth.push("mineral")};
		if (document.getElementById("wet_rock_exist").checked) { palate_flavors_inorganic_earth.push("wet Rock")};
		if (document.getElementById("limestone_exist").checked) { palate_flavors_inorganic_earth.push("limestone")};
		if (document.getElementById("chalk_exist").checked) { palate_flavors_inorganic_earth.push("chalk")};
		if (document.getElementById("slate_exist").checked) { palate_flavors_inorganic_earth.push("slate")};
		if (document.getElementById("flint_exist").checked) { palate_flavors_inorganic_earth.push("flint")};
		palate_flavors["inorganic_earth"] = palate_flavors_inorganic_earth;

		if (document.getElementById("old_exist").checked) { palate_flavors_wood.push("old")};
		if (document.getElementById("new_exist").checked) { palate_flavors_wood.push("new")};
		if (document.getElementById("large_exist").checked) { palate_flavors_wood.push("large")};
		if (document.getElementById("small_exist").checked) { palate_flavors_wood.push("small")};
		if (document.getElementById("french_exist").checked) { palate_flavors_wood.push("french")};
		if (document.getElementById("american_exist").checked) { palate_flavors_wood.push("american")};
		if (document.getElementById("no_wood_exist").checked) { palate_flavors_wood.push("no wood")};
		palate_flavors["wood"] = palate_flavors_wood;

		//Key element for testable flavor
		var key_marker = document.getElementById("key_marker").value
		if (!key_marker == false) { palate_flavors_key.push(key_marker)};
		palate_flavors["key"] = palate_flavors_key;

//AJAX
		$.ajax({
		    type: "GET",
		    url: "/test",
		    data: { sight: sight,
		    		nose: nose,
		    		palate_structures: palate_structures, 
		    		palate_flavors: palate_flavors 
		    		 },
		    success: function (data) {
		    	//console.log(data);
		        $("#possible").empty();
		        var dataLength = data.length
		        for (var i = 0; i < data.length; i++) {
		        	$("#possible").append("<li>" + data[i] + "</li>");
		        };
		    }
		});
	});

//END OF #CHANGE

})
