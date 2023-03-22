extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0



func _process(delta):
	pass


func _on_Button_pressed():
	Global.nome = $LineEdit.text 	
	print(Global.nome)
	get_tree().change_scene("res://scenes/intro_scene/Instructions_scene.tscn")

