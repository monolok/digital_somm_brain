
#Cabernet Sauvignon and blends
	#Graves
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
	#Washington (Columbia valley)

#Cabernet Franc
	#Bourgueil
	#Chinon
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
	#Beaujolais (carbonic maceration)
	#Beaujolais (no carbonic maceration)

#Grenache - GSM
	#CDP
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
		#minimum palate_structure
		ps_x = PalateStructure.create(body: (4..5), alcohol: 4, acid: 4, tannin: 4)
		nebbiolo.palate_structures << ps_x

	#Barbaresco
	#Gattinara (normale & riserva)

#Pinot Noir
pn = Grape.create(name: "Pinot Noir")
	#Côte d'Or
		Testable.create(name: "Côte d'Or", grape_id: pn.id)
		#minimum palate_structure
		ps_y = PalateStructure.create(body: 3, alcohol: 3, acid: 4, tannin: 2)
		pn.palate_structures << ps_y

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
	#Norhtern Rhône
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
