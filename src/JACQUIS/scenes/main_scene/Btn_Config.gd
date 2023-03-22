extends Button



func _ready():
	pass 

func _on_btn_config_pressed():
	get_tree().change_scene("res://scenes/configs_scene/config.tscn")


func _on_btn_config_mouse_entered():
	$BotaoPequeno.modulate.r = 0.7
	$BotaoPequeno.modulate.g = 0.7
	$BotaoPequeno.modulate.b = 0.7

func _on_btn_config_mouse_exited():
	$BotaoPequeno.modulate.r = 1
	$BotaoPequeno.modulate.g = 1
	$BotaoPequeno.modulate.b = 1
