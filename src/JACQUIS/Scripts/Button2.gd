extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





#muda de cena quando o botão é pressionado
func _on_Button_pressed():
	get_tree().change_scene("res://Instructions_scene/Instructions_scene.tscn")
	pass

#muda de cena quando o botão é pressionada
func _on_Button2_pressed():
	get_tree().change_scene("res://main_scene/Menu.tscn")
	pass # Replace with function body.


func _on_Button_mouse_entered():
	$
	pass # Replace with function body.


func _on_Button_mouse_exited():
	pass # Replace with function body.
