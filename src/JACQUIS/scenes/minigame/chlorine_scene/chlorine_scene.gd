extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.frame = 0


func _on_btn_more_pressed():
	$AnimatedSprite.frame += 5


func _on_btn_less_pressed():
	$AnimatedSprite.frame -= 5


func _on_btn_submit_pressed():
	print($AnimatedSprite.frame)
	if $AnimatedSprite.frame > 97:
		$Label.text = "Oops... o caminhão está muito cheio, evazie um pouco"
	elif $AnimatedSprite.frame < 92:
		$Label.text = "Ainda cabe mais! Enche mais um pouco..."
	else:
		get_tree().change_scene("res://scenes/minigame/pvc_scene/pvc_scene.tscn")