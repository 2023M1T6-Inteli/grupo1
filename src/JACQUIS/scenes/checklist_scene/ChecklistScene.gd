extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var xses = [$X1, $X2, $X3, $X4, $X5, $X6]
	# Esconder todos os checkboxes de "errado"
	for x in xses:
		x.visible = false


func _on_Button_pressed():
	var checkboxes = [$CheckBox, $CheckBox2, $CheckBox3, $CheckBox4, $CheckBox5, $CheckBox6]
	var xses = [$X1, $X2, $X3, $X4, $X5, $X6]
	var something_wrong = false
	var correct_items = [1, 3, 5]
	var wrong_items = [2, 4, 6]
	
	# 1: Esconder todos os checkboxes de "errado"
	for x in xses:
		x.visible = false
	
	# 2: Ver se tem algum item errado checkado
	for i in wrong_items:
		i -= 1 # Corrige o valor de i para chegar ao índice da Array
		if checkboxes[i].is_pressed():
			# Mostrar vermelinho na checkbox
			something_wrong = true
			xses[i].visible = true # Mostrar o X vermelho
			
			
	# 3: Ver se tem algum item certo não checkado
	for i in correct_items:
		i -= 1 # Corrige o valor de i para chegar ao índice da Array
		if !checkboxes[i].is_pressed():
			# Mostrar vermelinho na checkbox
			something_wrong = true
			xses[i].visible = true # Mostrar o X vermelho

		
	if !something_wrong:
		get_tree().change_scene("res://scenes/NodeRoad.tscn")
