extends Node2D

# variable para definir que pregunta toca
var pregunta_numero
var respuesta 
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	preguntar()
	
func pregunta():
	pregunta_numero = randi() % 3
	print( respuesta)

	if pregunta_numero == 1:
		print ("de que color son los mares ")
		$p.text = "de que color son "
		$r1.text = "azul"
		$r2.text = "verde"
		$r3.text = "el oceno no tiene color "
		$r4.text = "no se "
	 if pregunta_numero == 2 :
		print ("de q color es la luna ")
		$p.text = "de q color es la luna"
		$r1.tex = "azul"
		$r2.text = "blanco"
		$r3.text = "amarilla"
		$r4.text = "no se "
	

			
func ressponder():
 	 if pregunta_numero == 1 :
