#Cabernet Sauvignon and blends
cab = Grape.create(name: "Cabernet Sauvignon and blends")
	#Graves
		Testable.create(name: "Graves", grape_id: cab.id)
		cab.palate_structures << PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (4..4), tannin: (4..5))
		cab.palate_flavors << PalateFlavor.create(fruit: ["black", "berry", "cherry", "cassis", "green olive"], fruit_character: ["tart", "stewed"], non_fruit: ["herbal", "animal", "cedar", "pencil lead", "violet"], organic_earth: ["forest floor", "mushrooms", "spice"], inorganic_earth: [""], wood: ["new", "old", "french"])
		cab.noses << Nose.create(intensity: ["delicate", "moderate"], fruit: ["black", "berry", "cherry", "cassis", "green olive"], fruit_character: ["tart", "stewed"], non_fruit: ["herbal", "animal", "cedar", "pencil lead", "violet"], organic_earth: ["forest floor", "mushrooms", "spice"], inorganic_earth: [""], wood: ["new", "old", "french"])
		cab.sights << Sight.create(color: (2..2), concentration: (3..3))

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
		cab.palate_structures << PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (3..4), tannin: (4..5))
		cab.palate_flavors << PalateFlavor.create(fruit: ["black", "berry", "cherry", "cassis", "currant", "green olive"], fruit_character: ["jammy", "stewed"], non_fruit: ["herbal", "spice", "chocolate", "cedar"], organic_earth: [""], inorganic_earth: [""], wood: ["new", "old", "french", "american"])
		cab.noses <<  Nose.create(intensity: ["moderate", "powerful"], fruit: ["black", "berry", "cherry", "cassis", "currant", "green olive"], fruit_character: ["jammy", "stewed"], non_fruit: ["herbal", "spice", "chocolate", "cedar"], organic_earth: [""], inorganic_earth: [""], wood: ["new", "old", "french", "american"])
		cab.sights << Sight.create(color: (2..2), concentration: (3..3))

	#Washington (Columbia valley)

#Cabernet Franc
cab_franc = Grape.create(name: "Cabernet Franc")
	#Bourgueil
	#Chinon
		Testable.create(name: "Chinon", grape_id: cab_franc.id)
		cab_franc.palate_structures << PalateStructure.create(body: (3..3), alcohol: (3..4), acid: (4..5), tannin: (3..4))
		cab_franc.palate_flavors << PalateFlavor.create(fruit: ["red", "sour cherry", "plum", "raspberry", "cranberry"], fruit_character: ["tart"], non_fruit: ["vegetal", "herbal", "floral"], organic_earth: [""], inorganic_earth: ["mineral", "chalk", "wet rock", "limestone"], wood: ["no wood", "old", "new"])
		cab_franc.noses << Nose.create(intensity: ["moderate"], fruit: ["red", "sour cherry", "plum", "raspberry", "cranberry"], fruit_character: ["tart"], non_fruit: ["vegetal", "herbal", "floral"], organic_earth: [""], inorganic_earth: ["mineral", "chalk", "wet rock", "limestone"], wood: ["no wood", "old", "new"])
		cab_franc.sights << Sight.create(color: (2..2), concentration: (2..3))

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
gamay.palate_structures << PalateStructure.create(body: (2..4), alcohol: (3..4), acid: (4..4), tannin: (2..3))
gamay.palate_flavors << PalateFlavor.create(fruit: ["red", "artificial fruit", "tropical", "bubblegum"], fruit_character: ["tart", "baked", "candied"], non_fruit: ["herbal", "floral"], organic_earth: [""], inorganic_earth: ["mineral", "wet rock", "limestone", "slate"], wood: ["no wood"])
gamay.noses << Nose.create(intensity: ["moderate", "powerful"], fruit: ["red", "artificial fruit", "tropical", "bubblegum"], fruit_character: ["tart", "baked", "candied"], non_fruit: ["herbal", "floral"], organic_earth: [""], inorganic_earth: ["mineral", "wet rock", "limestone", "slate"], wood: ["no wood"])
gamay.sights << Sight.create(color: (1..2), concentration: (2..3))

	#Beaujolais (carbonic maceration)
	#Beaujolais (no carbonic maceration)

#Grenache - GSM
gsm = Grape.create(name: "Grenache Blend")
	#CDP
	Testable.create(name: "CDP", grape_id: gsm.id)
	gsm.palate_structures << PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (3..4), tannin: (4..5))
	gsm.palate_flavors << PalateFlavor.create(fruit: ["black", "red"], fruit_character: ["baked", "ripe"], non_fruit: ["herbal", "garrigue", "spice", "pepper", "savory", "animal"], organic_earth: ["mushrooms", "forest floor", "potting soil"], inorganic_earth: ["limestone", "mineral", "wet rock", "slate", "flint"], wood: ["old", "french", "american", "large"])
	gsm.noses << Nose.create(intensity: ["moderate", "powerful"], fruit: ["black", "red"], fruit_character: ["baked", "ripe"], non_fruit: ["herbal", "garrigue", "spice", "pepper", "savory", "animal"], organic_earth: ["mushrooms", "forest floor", "potting soil"], inorganic_earth: ["limestone", "mineral", "wet rock", "slate", "flint"], wood: ["old", "french", "american", "large"])
	gsm.sights << Sight.create(color: (2..2), concentration: (2..3))

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
		nebbiolo.palate_structures << PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (4..5), tannin: (4..5))
		nebbiolo.palate_flavors << PalateFlavor.create(fruit: ["red", "cherry", "cranberry"], fruit_character: ["tart", "dried"], non_fruit: ["floral", "vegetal", "truffle", "rose petal"], organic_earth: ["forest floor", "mushrooms", "potting soil"], inorganic_earth: ["mineral"], wood: ["new", "old", "french", "american"])
		nebbiolo.noses << Nose.create(intensity: ["moderate", "powerful"], fruit: ["red", "cherry", "cranberry"], fruit_character: ["tart", "dried"], non_fruit: ["floral", "vegetal", "truffle", "rose petal"], organic_earth: ["forest floor", "mushrooms", "potting soil"], inorganic_earth: ["mineral"], wood: ["new", "old", "french", "american"])
		nebbiolo.sights << Sight.create(color: (2..4), concentration: (2..3), rim: true) #strong rim variation

	#Barbaresco
	#Gattinara (normale & riserva)

#Pinot Noir
pn = Grape.create(name: "Pinot Noir")
	#Côte d'Or
		Testable.create(name: "Côte d'Or", grape_id: pn.id)
		pn.palate_structures << PalateStructure.create(body: (2..3), alcohol: (2..4), acid: (4..5), tannin: (2..3))
		pn.palate_flavors << PalateFlavor.create(fruit: ["red", "cherry", "raspberry", "strawberry"], fruit_character: ["tart"], non_fruit: ["floral", "herbal", "spice", "vegetal", "tea"], organic_earth: ["forest floor", "potting soil"], inorganic_earth: ["mineral", "limestone", "wet rock", "slate", "flint"], wood: ["new", "old", "french", "american"])
		pn.noses << Nose.create(intensity: ["delicate", "moderate"], fruit: ["red", "cherry", "raspberry", "strawberry"], fruit_character: ["tart"], non_fruit: ["floral", "herbal", "spice", "vegetal", "tea"], organic_earth: ["forest floor", "potting soil"], inorganic_earth: ["mineral", "limestone", "wet rock", "slate", "flint"], wood: ["new", "old", "french", "american"])
		pn.sights << Sight.create(color: (2..2), concentration: (1..2))

	#California (Anderson valley, Carneros, Central coast, Sonoma coast/valley)
	#Oregon (Willamette valley)
	#Central Otago
	#Marlborough
	#Martinborough

#Sangiovese
sangiovese = Grape.create(name: "Sangiovese")
	#Brunello di Montalcino
	#Chianti
	Testable.create(name: "Chianti", grape_id: sangiovese.id)
	sangiovese.palate_structures << PalateStructure.create(body: (3..4), alcohol: (3..4), acid: (4..5), tannin: (4..5))
	sangiovese.palate_flavors << PalateFlavor.create(fruit: ["red", "tomato", "cherry"], fruit_character: ["tart", "sharp", "bright"], non_fruit: ["floral", "herbal", "vegetal", "leafy", "sandalwood"], organic_earth: ["forest floor", "earth", "potting soil"], inorganic_earth: ["mineral", "chalk"], wood: ["old", "french", "american"])
	sangiovese.noses << Nose.create(intensity: ["moderate", "powerful"], fruit: ["red", "tomato", "cherry"], fruit_character: ["tart", "sharp", "bright"], non_fruit: ["floral", "herbal", "vegetal", "leafy", "sandalwood"], organic_earth: ["forest floor", "earth", "potting soil"], inorganic_earth: ["mineral", "chalk"], wood: ["old", "french", "american"])
	sangiovese.sights << Sight.create(color: (2..2), concentration: (2..3))

	#vino Nobile di Montepulciano (classico, riserva, ruffina)

#Syrah
syrah = Grape.create(name: "Syrah")
	#Norhtern Rhône
	Testable.create(name: "Norhtern Rhône", grape_id: syrah.id)
	syrah.palate_structures << PalateStructure.create(body: (4..5), alcohol: (3..4), acid: (3..4), tannin: (4..5))
	syrah.palate_flavors << PalateFlavor.create(fruit: ["black", "red", "green", "plum"], fruit_character: ["tart"], non_fruit: ["herbal", "spice", "floral", "animal", "pepper", "provence herbs", "tobacco", "ash", "smoky-meat", "meat"], organic_earth: ["mushrooms", "forest floor"], inorganic_earth: ["mineral", "limestone", "wet rock"], wood: ["old", "french", "american", "large"])
	syrah.noses << Nose.create(intensity: ["moderate", "powerful"], fruit: ["black", "red", "green", "plum"], fruit_character: ["tart"], non_fruit: ["herbal", "spice", "floral", "animal", "pepper", "provence herbs", "tobacco", "ash", "smoky-meat", "meat"], organic_earth: ["mushrooms", "forest floor"], inorganic_earth: ["mineral", "limestone", "wet rock"], wood: ["old", "french", "american", "large"])
	syrah.sights << Sight.create(color: (1..2), concentration: (1..2))

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