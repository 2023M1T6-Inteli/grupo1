extends Node2D


# Esvazia o caminhão
func _ready():
	$AnimatedSprite.frame = 0


# Enche o caminhão um pouco
func _on_btn_more_pressed():
	$AnimatedSprite.frame += 5


# Esvazia o caminhão um pouco
func _on_btn_less_pressed():
	$AnimatedSprite.frame -= 5


# Vai para a próxima cena no fluxo de jogo se o caminhão for enchido corretamente
func _on_btn_submit_pressed():
	print($AnimatedSprite.frame)
	if $AnimatedSprite.frame > 97:
		$Label.text = "Oops... o caminhão está muito cheio, evazie um pouco"
	elif $AnimatedSprite.frame < 92:
		$Label.text = "Ainda cabe mais! Enche mais um pouco..."
	else:
		get_tree().change_scene("res://scenes/minigame/pvc_scene/pvc_scene.tscn")
