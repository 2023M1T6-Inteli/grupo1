extends Button


# Vai para a cena de configuração
func _on_Controles_pressed():
	get_tree().change_scene("res://scenes/controls_scene/controls_scene.tscn")


# Animação do botão de config
func _on_Controles_mouse_entered():
	$SprtBotao.modulate.r = 0.7
	$SprtBotao.modulate.g = 0.7
	$SprtBotao.modulate.b = 0.7


# Animação do botão de config
func _on_Controles_mouse_exited():
	$SprtBotao.modulate.r = 1
	$SprtBotao.modulate.g = 1
	$SprtBotao.modulate.b = 1
