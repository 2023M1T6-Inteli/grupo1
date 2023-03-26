extends Node2D


# Altera o volume da trilha sonora
func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(1,value)
	
	
# Muta/desmuta o som
func _on_CheckBox_toggled(button_pressed):
	AudioServer.set_bus_mute(1 , !button_pressed)

# Volta para a cena principal
func _on_btn_voltar_pressed():
	get_tree().change_scene("res://scenes/main_scene/main_scene.tscn")
