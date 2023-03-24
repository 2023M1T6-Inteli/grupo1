extends Button


# Vai para a próxima cena no fluxo de jogo
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/checklist_scene/checklist_scene.tscn")
