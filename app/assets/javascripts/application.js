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

//palate_structures data
	$("#change").change(function() {
		var tannin = document.getElementById("tannin").value;
		var acid = document.getElementById("acid").value;
		var alcohol = document.getElementById("alcohol").value;
		var body = document.getElementById("body").value;

//palate_flavors data
		var palate_flavors = [];

		if (document.getElementById("citrus_exist").checked) { palate_flavors.push("citrus")};
		if (document.getElementById("apple_pear_exist").checked) { palate_flavors.push("apple/Pear")};
		if (document.getElementById("stone_pit_exist").checked) { palate_flavors.push("stone/Pit")};
		if (document.getElementById("tropical_exist").checked) { palate_flavors.push("tropical")};
		if (document.getElementById("melon_exist").checked) { palate_flavors.push("melon")};
		
		if (document.getElementById("red_exist").checked) { palate_flavors.push("red")};
		if (document.getElementById("black_exist").checked) { palate_flavors.push("black")};
		if (document.getElementById("blue_exist").checked) { palate_flavors.push("blue")};
		
		if (document.getElementById("baked_exist").checked) { palate_flavors.push("baked")};
		if (document.getElementById("stewed_exist").checked) { palate_flavors.push("stewed")};
		if (document.getElementById("dried_exist").checked) { palate_flavors.push("dried")};
		if (document.getElementById("peels_exist").checked) { palate_flavors.push("peels")};
		if (document.getElementById("desiccated_exist").checked) { palate_flavors.push("desiccated")};
		if (document.getElementById("tart_exist").checked) { palate_flavors.push("tart")};
		if (document.getElementById("jammy_exist").checked) { palate_flavors.push("jammy")};

		if (document.getElementById("floral_exist").checked) { palate_flavors.push("floral")};
		if (document.getElementById("vegetal_exist").checked) { palate_flavors.push("vegetal")};
		if (document.getElementById("herbal_exist").checked) { palate_flavors.push("herbal")};
		if (document.getElementById("spice_exist").checked) { palate_flavors.push("spice")};
		if (document.getElementById("petrol_exist").checked) { palate_flavors.push("petrol")};
		if (document.getElementById("animal_exist").checked) { palate_flavors.push("animal")};
		if (document.getElementById("barn_exist").checked) { palate_flavors.push("barn")};
		if (document.getElementById("fermentation_exist").checked) { palate_flavors.push("fermentation")};

		if (document.getElementById("forest_floor_exist").checked) { palate_flavors.push("forest Floor")};
		if (document.getElementById("compost_exist").checked) { palate_flavors.push("compost")};
		if (document.getElementById("mushrooms_exist").checked) { palate_flavors.push("mushrooms")};
		if (document.getElementById("potting_soil_exist").checked) { palate_flavors.push("potting Soil")};

		if (document.getElementById("mineral_exist").checked) { palate_flavors.push("mineral")};
		if (document.getElementById("wet_rock_exist").checked) { palate_flavors.push("wet Rock")};
		if (document.getElementById("limestone_exist").checked) { palate_flavors.push("limestone")};
		if (document.getElementById("chalk_exist").checked) { palate_flavors.push("chalk")};
		if (document.getElementById("slate_exist").checked) { palate_flavors.push("slate")};
		if (document.getElementById("flint_exist").checked) { palate_flavors.push("flint")};

		if (document.getElementById("old_exist").checked) { palate_flavors.push("old")};
		if (document.getElementById("new_exist").checked) { palate_flavors.push("new")};
		if (document.getElementById("large_exist").checked) { palate_flavors.push("large")};
		if (document.getElementById("small_exist").checked) { palate_flavors.push("small")};
		if (document.getElementById("french_exist").checked) { palate_flavors.push("french")};
		if (document.getElementById("american_exist").checked) { palate_flavors.push("american")};
		if (document.getElementById("no_wood_exist").checked) { palate_flavors.push("no wood")};

//AJAX
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
		        $("#possible").empty();
		        $("#possible").append("<li>tannin: " + data.tannin + "</li>");
		       	$("#possible").append("<li>acid: " + data.acid + "</li>");
		        $("#possible").append("<li>alcohol: " + data.alcohol + "</li>");
		        $("#possible").append("<li>body: " + data.body + "</li>");
		        $("#possible").append("<li>palate flavors: " + data.palate_flavors + "</li>");		       	
		    }
		});
	});


})
