extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


#muda de cena quando o botão é pressionado
func _on_Button3_pressed():
	get_tree().change_scene("res://main_scene/MainScene.tscn")
	pass
