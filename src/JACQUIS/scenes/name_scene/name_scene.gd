extends Node2D


# Reseta o score
func _ready():
	Global.score = 0


# Vai para a próxima cena no fluxo de jogo
func _on_Button_pressed():
	Global.nome = $LineEdit.text 	
	print(Global.nome)
	get_tree().change_scene("res://scenes/intro_scene/intro_scene.tscn")
