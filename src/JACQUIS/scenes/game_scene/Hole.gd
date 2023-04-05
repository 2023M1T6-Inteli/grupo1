extends KinematicBody2D

var moving = false
var sprite_speed = 225.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving == true:
		if sprite_speed <= 550:
			sprite_speed += 0.3


# Lida com a movimentação do buraco (para ficar parado
func _physics_process(delta):
	if (moving):
		var dislocation = Vector2(-sprite_speed, 0)
		move_and_slide(dislocation)
		if get_slide_count() > 0:
			_process_collision()


# Processa a colisão
func _process_collision():
	Global.vida -= 1
	if Global.vida < 0:
		get_tree().change_scene("res://scenes/game_over_scene/game_over_scene.tscn")
	else:
		get_tree().change_scene("res://scenes/minigame/intro_scene_truck/intro_scene_truck.tscn")


# Faz o carro se mover quando o sprite entra em cena
func _ready():
	moving = true
