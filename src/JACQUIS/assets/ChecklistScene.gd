extends Node2D



# Called when the node enters the scene tree for the first time.
func _process(delta):
	pass


func _on_Button_pressed():
	var something_wrong = false
	var correct_checkboxes = [$CheckBox, $CheckBox3, $CheckBox5]
	var wrong_checkboxes = [$CheckBox2, $CheckBox4, $CheckBox6]
	
	for checkbox in wrong_checkboxes:
		print(checkbox.text)
		if checkbox.is_pressed():
			# Mostrar vermelinho na checkbox
			something_wrong = true
			
	for checkbox in correct_checkboxes:
		if !checkbox.is_pressed():
			# Mostrar vermelinho na checkbox
			something_wrong = true
			

		
	if !something_wrong:
		get_tree().change_scene("res://game_scene/NodeRoad.tscn")
