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

//palate_structures AJAX
	$("#change").change(function() {
		var tannin = document.getElementById("tannin").value;
		var acid = document.getElementById("acid").value;
		var alcohol = document.getElementById("alcohol").value;
		var body = document.getElementById("body").value;

		var palate_flavors = [];

		if (document.getElementById("citrus_exist").checked) { palate_flavors.push("Citrus")};
		if (document.getElementById("apple_pear_exist").checked) { palate_flavors.push("Apple/Pear")};
		if (document.getElementById("stone_pit_exist").checked) { palate_flavors.push("Stone/Pit")};
		if (document.getElementById("tropical_exist").checked) { palate_flavors.push("Tropical")};
		if (document.getElementById("melon_exist").checked) { palate_flavors.push("Melon")};
		
		if (document.getElementById("red_exist").checked) { palate_flavors.push("Red")};
		if (document.getElementById("black_exist").checked) { palate_flavors.push("Black")};
		if (document.getElementById("blue_exist").checked) { palate_flavors.push("Blue")};
		
		if (document.getElementById("baked_exist").checked) { palate_flavors.push("Baked")};
		if (document.getElementById("stewed_exist").checked) { palate_flavors.push("Stewed")};
		if (document.getElementById("dried_exist").checked) { palate_flavors.push("Dried")};
		if (document.getElementById("peels_exist").checked) { palate_flavors.push("Peels")};
		if (document.getElementById("desiccated_exist").checked) { palate_flavors.push("Desiccated")};
		if (document.getElementById("tart_exist").checked) { palate_flavors.push("Tart")};
		if (document.getElementById("jammy_exist").checked) { palate_flavors.push("Jammy")};

		if (document.getElementById("floral_exist").checked) { palate_flavors.push("Floral")};
		if (document.getElementById("vegetal_exist").checked) { palate_flavors.push("Vegetal")};
		if (document.getElementById("herbal_exist").checked) { palate_flavors.push("Herbal")};
		if (document.getElementById("spice_exist").checked) { palate_flavors.push("Spice")};
		if (document.getElementById("petrol_exist").checked) { palate_flavors.push("Petrol")};
		if (document.getElementById("animal_exist").checked) { palate_flavors.push("Animal")};
		if (document.getElementById("barn_exist").checked) { palate_flavors.push("Barn")};
		if (document.getElementById("fermentation_exist").checked) { palate_flavors.push("Fermentation")};

		if (document.getElementById("forest_floor_exist").checked) { palate_flavors.push("Forest Floor")};
		if (document.getElementById("compost_exist").checked) { palate_flavors.push("Compost")};
		if (document.getElementById("mushrooms_exist").checked) { palate_flavors.push("Mushrooms")};
		if (document.getElementById("potting_soil_exist").checked) { palate_flavors.push("Potting Soil")};

		if (document.getElementById("mineral_exist").checked) { palate_flavors.push("Mineral")};
		if (document.getElementById("wet_rock_exist").checked) { palate_flavors.push("Wet Rock")};
		if (document.getElementById("limestone_exist").checked) { palate_flavors.push("Limestone")};
		if (document.getElementById("chalk_exist").checked) { palate_flavors.push("Chalk")};
		if (document.getElementById("slate_exist").checked) { palate_flavors.push("Slate")};
		if (document.getElementById("flint_exist").checked) { palate_flavors.push("Flint")};

		if (document.getElementById("old_exist").checked) { palate_flavors.push("Old")};
		if (document.getElementById("new_exist").checked) { palate_flavors.push("New")};
		if (document.getElementById("large_exist").checked) { palate_flavors.push("Large")};
		if (document.getElementById("small_exist").checked) { palate_flavors.push("Small")};
		if (document.getElementById("french_exist").checked) { palate_flavors.push("French")};
		if (document.getElementById("american_exist").checked) { palate_flavors.push("American")};
		if (document.getElementById("no_wood_exist").checked) { palate_flavors.push("No Wood")};

		$.ajax({
		    type: "GET",
		    url: "/palate_structures",
		    data: { tannin: tannin, 
		    		acid: acid, 
		    		alcohol: alcohol, 
		    		body: body, 
		    		palate_flavors: palate_flavors 
		    		 },
		    success: function (data) {
		    	console.log(data);
		        //$("#possible").empty();
		        //$("#possible").append();
		    }
		});
	});


})
