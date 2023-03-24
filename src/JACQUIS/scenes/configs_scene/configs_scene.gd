extends Node2D


# Altera o volume da trilha sonora
func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(1,value)
	
	
# Muta/desmuta o som
func _on_CheckBox_toggled(button_pressed):
	AudioServer.set_bus_mute(1 , !button_pressed)
