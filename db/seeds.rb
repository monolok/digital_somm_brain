
#xxxxxx_structure.include?(5) or xxxxxx_structure.include?(4) both return true


#Cabernet Sauvignon and blends
cab = Grape.create(name: "Cabernet Sauvignon and blends")
	#Graves
		Testable.create(name: "Graves", grape_id: cab.id)
		graves_structure = PalateStructure.create(body: (4..5), alcohol: (4..5), acid: 4 , tannin: (4..5))
		graves_flavor = PalateFlavor.create()
		graves_nose = nil#Nose.create()
		graves_sight = nil#Sight.create()

		cab.palate_structures << graves_structure
		cab.palate_flavors << graves_flavor
		cab.noses << graves_nose
		cab.sights << graves_sight

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
		cali_cab_structure = PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (3..4) , tannin: (4..5))
		cali_cab_flavor = nil
		cali_cab_nose = nil
		cali_cab_sight = nil

		cab.palate_structures << cali_cab_structure
		cab.palate_flavors << cali_cab_flavor
		cab.noses << cali_cab_nose
		cab.sights << cali_cab_sight
	#Washington (Columbia valley)

#Cabernet Franc
cab_franc = Grape.create(name: "Cabernet Franc")
	#Bourgueil
	#Chinon
		Testable.create(name: "Chinon", grape_id: cab_franc.id)
		chinon_structure = PalateStructure.create(body: (3..4), alcohol: (3..4), acid: (4..5) , tannin: (3..4))
		chinon_flavor = nil
		chinon_nose = nil
		chinon_sight = nil

		cab_franc.palate_structures << chinon_structure
		cab_franc.palate_flavors << chinon_flavor
		cab_franc.noses << chinon_nose
		cab_franc.sights << chinon_sight

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
gamay_structure = PalateStructure.create(body: (2..4), alcohol: (3..4), acid: 4 , tannin: (2..3))
gamay_flavor = nil
gamay_nose = nil
gamay_sight = nil

gamay.palate_structures << gamay_structure
gamay.palate_flavors << gamay_flavor
gamay.noses << gamay_nose
gamay.sights << gamay_sight
	#Beaujolais (carbonic maceration)
	#Beaujolais (no carbonic maceration)

#Grenache - GSM
gsm = Grape.create(name: "Grenache Blend")
	#CDP
	Testable.create(name: "CDP", grape_id: gsm.id)
	cdp_structure = PalateStructure.create(body: (4..5), alcohol: (4..5), acid: (3..4) , tannin: (4..5))
	cdp_flavor = nil
	cdp_nose = nil
	cdp_sight = nil

	gsm.palate_structures << cdp_structure
	gsm.palate_flavors << cdp_flavor
	gsm.noses << cdp_nose
	gsm.sights << cdp_sight

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
		
		nebbiolo.palate_structures << barolo_structure

	#Barbaresco
	#Gattinara (normale & riserva)

#Pinot Noir
pn = Grape.create(name: "Pinot Noir")
	#Côte d'Or
		Testable.create(name: "Côte d'Or", grape_id: pn.id)
		cote_dor_structure = PalateStructure.create(body: (2..3), alcohol: (2..4), acid: (4..5), tannin: (2..3))
		
		pn.palate_structures << cote_dor_structure

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
	nr_structure = PalateStructure.create(body: (4..5), alcohol: (3..4), acid: (3..4) , tannin: (4..5))
	nr_flavor = nil
	nr_nose = nil
	nr_sight = nil

	syrah.palate_structures << nr_structure
	syrah.palate_flavors << nr_flavor
	syrah.noses << nr_nose
	syrah.sights << nr_sight

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