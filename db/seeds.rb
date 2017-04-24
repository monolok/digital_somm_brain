#xxxxxx_structure.include?(5) or xxxxxx_structure.include?(4) both return true
#PalateFlavor.first.grapes[0].testables

#Cabernet Sauvignon and blends
cab = Grape.create(name: "Cabernet Sauvignon and blends")
	#Graves
		Testable.create(name: "Graves", grape_id: cab.id)
		graves_structure = PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (4..4), tannin: (4..5))
		graves_flavor = PalateFlavor.create(fruit: ["black", "berry", "cherry", "cassis", "green olive"], fruit_character: ["tart", "stewed"], non_fruit: ["herbal", "animal", "cedar", "pencil lead", "violet"], organic_earth: ["forest floor", "mushrooms", "spice"], inorganic_earth: [""], wood: ["new", "old", "french"])
		#graves_nose = Nose.create()
		#graves_sight = Sight.create()

		cab.palate_structures << graves_structure
		cab.palate_flavors << graves_flavor
		#cab.noses << graves_nose
		#cab.sights << graves_sight

	#Medoc
	#Barossa Valley
	#Coonawarra
	#Margaret River
	#McLaren Vale
	#Curicó
	#Maipo
	#Maule
	#Rapel
	#California (Napa, Sonoma, Central coast)
		Testable.create(name: "California Cab", grape_id: cab.id)
		cali_cab_structure = PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (3..4), tannin: (4..5))
		cali_cab_flavor = PalateFlavor.create(fruit: ["black", "berry", "cherry", "cassis", "currant", "green olive"], fruit_character: ["jammy", "stewed"], non_fruit: ["herbal", "spice", "chocolate", "cedar"], organic_earth: [""], inorganic_earth: [""], wood: ["new", "old", "french", "american"])
		#cali_cab_nose = nil
		#cali_cab_sight = nil

		cab.palate_structures << cali_cab_structure
		cab.palate_flavors << cali_cab_flavor
		#cab.noses << cali_cab_nose
		#cab.sights << cali_cab_sight
	#Washington (Columbia valley)

#Cabernet Franc
cab_franc = Grape.create(name: "Cabernet Franc")
	#Bourgueil
	#Chinon
		Testable.create(name: "Chinon", grape_id: cab_franc.id)
		chinon_structure = PalateStructure.create(body: (3..3), alcohol: (3..4), acid: (4..5), tannin: (3..4))
		chinon_flavor = PalateFlavor.create(fruit: ["red", "sour cherry", "plum", "raspberry", "cranberry"], fruit_character: ["tart"], non_fruit: ["vegetal", "herbal", "floral"], organic_earth: [""], inorganic_earth: ["mineral", "chalk", "wet rock", "limestone"], wood: ["no wood", "old", "new"])
		#chinon_nose = nil
		#chinon_sight = nil

		cab_franc.palate_structures << chinon_structure
		cab_franc.palate_flavors << chinon_flavor
		#cab_franc.noses << chinon_nose
		#cab_franc.sights << chinon_sight

	#St. Nicolas de Bourgueil

#Carmenère
	#Curicó
	#Maipo
	#Maule
	#Rapel

#Corvina  - Based blend
	#Amarone
	#Valpolicella

#Gamay
gamay = Grape.create(name: "Gamay")
Testable.create(name: "Beaujolais", grape_id: gamay.id)
gamay_structure = PalateStructure.create(body: (2..4), alcohol: (3..4), acid: (4..4), tannin: (2..3))
gamay_flavor = PalateFlavor.create(fruit: ["red", "artificial fruit", "tropical", "bubblegum"], fruit_character: ["tart", "baked", "candied"], non_fruit: ["herbal", "floral"], organic_earth: [""], inorganic_earth: ["mineral", "wet rock", "limestone", "slate"], wood: ["no wood"])
#gamay_nose = nil
#gamay_sight = nil

gamay.palate_structures << gamay_structure
gamay.palate_flavors << gamay_flavor
#gamay.noses << gamay_nose
#gamay.sights << gamay_sight
	#Beaujolais (carbonic maceration)
	#Beaujolais (no carbonic maceration)

#Grenache - GSM
gsm = Grape.create(name: "Grenache Blend")
	#CDP
	Testable.create(name: "CDP", grape_id: gsm.id)
	cdp_structure = PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (3..4), tannin: (4..5))
	cdp_flavor = PalateFlavor.create(fruit: ["black", "red"], fruit_character: ["baked", "ripe"], non_fruit: ["herbal", "garrigue", "spice", "pepper", "savory", "animal"], organic_earth: ["mushrooms", "forest floor", "potting soil"], inorganic_earth: ["limestone", "mineral", "wet rock", "slate", "flint"], wood: ["old", "french", "american", "large"])
	#cdp_nose = nil
	#cdp_sight = nil

	gsm.palate_structures << cdp_structure
	gsm.palate_flavors << cdp_flavor
	#gsm.noses << cdp_nose
	#gsm.sights << cdp_sight

	#Gigondas
	#Vacqueyras
	#South Australia

#Malbec
	#Mendoza

#Merlot and Merlot based blends
	#Pomerol
	#St. Émilion
	#California (Napa, Sonoma, Central coast)
	#Washington (Columbia valley)

#Nebbiolo
nebbiolo = Grape.create(name: "Nebbiolo")
	#Barolo
		Testable.create(name: "Barolo", grape_id: nebbiolo.id)
		barolo_structure = PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (4..5), tannin: (4..5))
		barolo_flavor = PalateFlavor.create(fruit: ["red", "cherry", "cranberry"], fruit_character: ["tart", "dried"], non_fruit: ["floral", "vegetal", "truffle", "rose petal"], organic_earth: ["forest floor", "mushrooms", "potting soil"], inorganic_earth: ["mineral"], wood: ["new", "old", "french", "american"])

		nebbiolo.palate_structures << barolo_structure
		nebbiolo.palate_flavors << barolo_flavor

	#Barbaresco
	#Gattinara (normale & riserva)

#Pinot Noir
pn = Grape.create(name: "Pinot Noir")
	#Côte d'Or
		Testable.create(name: "Côte d'Or", grape_id: pn.id)
		cote_dor_structure = PalateStructure.create(body: (2..3), alcohol: (2..4), acid: (4..5), tannin: (2..3))
		cote_dor_flavor = PalateFlavor.create(fruit: ["red", "cherry", "raspberry", "strawberry"], fruit_character: ["tart"], non_fruit: ["floral", "herbal", "spice", "vegetal", "tea"], organic_earth: ["forest floor", "potting soil"], inorganic_earth: ["mineral", "limestone", "wet rock", "slate", "flint"], wood: ["new", "old", "french", "american"])
		
		pn.palate_structures << cote_dor_structure
		pn.palate_flavors << cote_dor_flavor

	#California (Anderson valley, Carneros, Central coast, Sonoma coast/valley)
	#Oregon (Willamette valley)
	#Central Otago
	#Marlborough
	#Martinborough

#Sangiovese
	#Brunello di Montalcino
	#Chianti
	#vino Nobile di Montepulciano (classico, riserva, ruffina)

#Syrah
syrah = Grape.create(name: "Syrah")
	#Norhtern Rhône
	Testable.create(name: "Norhtern Rhône", grape_id: syrah.id)
	nr_structure = PalateStructure.create(body: (4..5), alcohol: (3..4), acid: (3..4), tannin: (4..5))
	nr_flavor = PalateFlavor.create(fruit: ["black", "red", "green", "plum"], fruit_character: ["tart"], non_fruit: ["herbal", "spice", "floral", "animal", "pepper", "provence herbs", "tobacco", "ash", "smoky-meat", "meat"], organic_earth: ["mushrooms", "forest floor"], inorganic_earth: ["mineral", "limestone", "wet rock"], wood: ["old", "french", "american", "large"])
	#nr_nose = nil
	#nr_sight = nil

	syrah.palate_structures << nr_structure
	syrah.palate_flavors << nr_flavor
	#syrah.noses << nr_nose
	#syrah.sights << nr_sight

	#South Australia
	#Victoria
	#California (Central coast, Sonoma county)
	#Washington (Columbia valley)

#Tempranillo
	#Ribera del Duero
	#Rioja

#Zinfandel
	#Napa Valley
	#Paso Robles
	#Sonoma Valley