extends Button


func _on_Jogar_pressed():
	get_tree().change_scene("res://scenes/name_scene/PlayerName.tscn")


func _on_Jogar_mouse_entered():
	$SprtBotao.modulate.r = 0.7
	$SprtBotao.modulate.g = 0.7
	$SprtBotao.modulate.b = 0.7
	
func _on_Jogar_mouse_exited():
	$SprtBotao.modulate.r = 1
	$SprtBotao.modulate.g = 1
	$SprtBotao.modulate.b = 1
