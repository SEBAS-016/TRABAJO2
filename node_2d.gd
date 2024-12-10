extends Node2D

# variable para definir que pregunta toca
var tiempo_respuesta 
var pregunta_numero
var respuesta
var preguntas_correctas = []
const total = 4
var time = 10 
var t
var delta

func _ready():
	randomize()
	preguntar()
	print()
	
func _process(delta):
	$RESTANTE.text = str(round($tiempio_respuesta.time_left))
	
func preguntar():
	var cantidad_elementos = len(preguntas_correctas)
	if cantidad_elementos == total:
		get_tree().change_scene_to_file("res://felicitaciones.tscn")
	else:
		pregunta_numero = randi() % 4
		print( respuesta) 
		if pregunta_numero in preguntas_correctas:
			preguntar()
			print(pregunta_numero, "está en la lista de números.")
		else:
			print(pregunta_numero, "no está en la lista de números.")

			if pregunta_numero == 1:
				print ("de que color son los mares ")
				$p.text = "de que color son "
				$r1.text = "azul"
				$r2.text = "verde"
				$r3.text = "el oceno no tiene color "
				$r4.text = " no se "
			
			if pregunta_numero == 2 :
				print ("de q color es la luna ")
				$p.text = "de q color es la luna"
				$r1.text = "azul"
				$r2.text = "blanco"
				$r3.text = "amarilla"
				$r4.text = "no se"
				
			if pregunta_numero == 3 :
				print ("de q color es la sol ")
				$p.text = "de q color es la sol"
				$r1.text = "azul"
				$r2.text = "blanco"
				$r3.text = "amarilla"
				$r4.text = "no se"
			
			if pregunta_numero == 4:
				print ("de que color son las nubez  ")
				$p.text = "de que color son las nubez  "
				$r1.text = "azul"
				$r2.text = "verde"
				$r3.text = "blencas"
				$r4.text = " no se "
		
func responder():
	if pregunta_numero == 0:
		
		if respuesta == 1:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 2:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 3:
			$respuesta.text = "CORRECTA"
			preguntas_correctas.append(0)
			
		if respuesta == 4:
			$respuesta.text = "INCORRECTA"

	if pregunta_numero == 1:		
		if respuesta == 1:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 2:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 3:
			$respuesta.text = "CORRECTA"
			preguntas_correctas.append(1)
			
			
		if respuesta == 4:
			$respuesta.text = "INCORRECTA"
		

	if pregunta_numero == 2:
		
		
		if respuesta == 1:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 2:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 3:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 4:
			$respuesta.text = "CORRECTA"
			preguntas_correctas.append(2)
		

	if pregunta_numero == 3:
		
		
		if respuesta == 1:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 2:
			$respuesta.text = "INCORRECTA"
			
		if respuesta == 3:
			$respuesta.text = "CORRECTA"
			preguntas_correctas.append(3)
			
		if respuesta == 4:
			$respuesta.text = "INCORRECTA"


func _on_r_1_pressed():
	respuesta = 1
	responder()
	preguntar()
	print(preguntas_correctas)


func _on_r_2_pressed():
	respuesta = 2
	responder()
	preguntar()
	print(preguntas_correctas)



func _on_r_3_pressed():
	respuesta = 3
	responder()
	preguntar()
	print(preguntas_correctas)



func _on_r_4_pressed():
	respuesta = 4
	responder()
	preguntar()
	print(preguntas_correctas)

func _on_tiempio_respuesta_timeout():
	get_tree().change_scene_to_file("res://gameover.tscn")
	
