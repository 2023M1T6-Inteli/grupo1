extends Button


# Muda de cena quando o botão é pressionado
func _on_Button3_pressed():
	get_tree().change_scene("res://scenes/game_scene/game_scene.tscn")


func _on_ButtonBackControls_pressed():
	get_tree().change_scene("res://scenes/main_scene/main_scene.tscn")
