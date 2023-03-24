extends Node2D


# Vai para a próxima cena no fluxo de jogo
func _on_Button_pressed():
		get_tree().change_scene("res://scenes/game_scene/game_scene.tscn")
