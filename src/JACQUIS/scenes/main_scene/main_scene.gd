extends Node2D


# Inicia a música quando o Node entra em cena
func _ready():
	MusicControler._play_music()


# Mudanças de cena
func _on_btn_play_pressed():
	#get_tree().change_scene("res://scenes/name_scene/name_scene.tscn")
	var ranking = File.new()
	ranking.open("user://ranking.save", File.READ_WRITE)
	ranking.seek_end()
	#ranking.open("user://ranking.save", File.WRITE)
	ranking.store_string("B")
	ranking.close()


func _on_btn_controls_pressed():
	#get_tree().change_scene("res://scenes/controls_scene/controls_scene.tscn")
	var ranking = File.new()
	if ranking.file_exists("user://ranking.save"):
		ranking.open("user://ranking.save", File.READ)
		$testLabel.text = ranking.get_as_text()
	ranking.close()


func _on_btn_config_pressed():
	get_tree().change_scene("res://scenes/configs_scene/configs_scene.tscn")


# Animações dos botões
func _on_btn_play_mouse_entered():
	$btn_play/sprt_play.modulate.r = 0.7
	$btn_play/sprt_play.modulate.g = 0.7
	$btn_play/sprt_play.modulate.b = 0.7


func _on_btn_play_mouse_exited():
	$btn_play/sprt_play.modulate.r = 1
	$btn_play/sprt_play.modulate.g = 1
	$btn_play/sprt_play.modulate.b = 1


func _on_btn_controls_mouse_exited():
	$btn_controls/sprt_controls.modulate.r = 1
	$btn_controls/sprt_controls.modulate.g = 1
	$btn_controls/sprt_controls.modulate.b = 1


func _on_btn_controls_mouse_entered():
	$btn_controls/sprt_controls.modulate.r = 0.7
	$btn_controls/sprt_controls.modulate.g = 0.7
	$btn_controls/sprt_controls.modulate.b = 0.7


func _on_btn_config_mouse_exited():
	$btn_config/sprt_config.modulate.r = 1
	$btn_config/sprt_config.modulate.g = 1
	$btn_config/sprt_config.modulate.b = 1


func _on_btn_config_mouse_entered():
	$btn_config/sprt_config.modulate.r = 0.7
	$btn_config/sprt_config.modulate.g = 0.7
	$btn_config/sprt_config.modulate.b = 0.7
