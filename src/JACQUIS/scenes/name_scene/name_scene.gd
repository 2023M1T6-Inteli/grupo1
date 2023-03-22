extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0


func _on_Button_pressed():
	Global.nome = $LineEdit.text 	
	print(Global.nome)
	get_tree().change_scene("res://scenes/intro_scene/intro_scene.tscn")

