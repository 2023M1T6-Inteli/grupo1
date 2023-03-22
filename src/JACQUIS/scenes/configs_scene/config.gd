extends Node2D


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(1,value)
	
	
func _on_CheckBox_toggled(button_pressed):
	AudioServer.set_bus_mute(1 , !button_pressed)
