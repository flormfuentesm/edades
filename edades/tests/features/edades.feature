Feature: Devuelve mensaje por edad dada.
	Como usuario del sistema edades
	quiero ingresar una edad y me regrese un mensaje segun mi edad
	para tener siempre presenet mis años.

	Scenario: Con edad menor a -1
	Dado que ingreso la edad "-1"
	cuando consulto mi mensaje
	entonces veo "no existes"

	Scenario: Con edad menor a 12 pero mayor a 0
	Dado que ingreso la edad "8"
	cuando consulto mi mensaje
	entonces veo "eres niño"

	Scenario: Con edad menor a 18 pero mayor a 12
	Dado que ingreso la edad "16"
	cuando consulto mi mensaje
	entonces veo "eres adolescente"

	Scenario: Con edad menor a 65 pero mayor a 18
	Dado que ingreso la edad "33"
	cuando consulto mi mensaje
	entonces veo "eres adulto"

	Scenario: Con edad menor a 120 pero mayor a 65
	Dado que ingreso la edad "80"
	cuando consulto mi mensaje
	entonces veo "eres adulto mayor"

	Scenario: Con edad menor a 150 pero mayor a 120
	Dado que ingreso la edad "160"
	cuando consulto mi mensaje
	entonces veo "eres mumm-ra"