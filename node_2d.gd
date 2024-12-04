extends Node2D

# variable para definir que pregunta toca
var pregunta_numero
var respuesta 
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	preguntar()
	
func pregunta()
