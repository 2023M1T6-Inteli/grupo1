extends KinematicBody2D

var moving = false
var sprite_speed = 225.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving == true:
		if sprite_speed <= 550:
			sprite_speed += 0.3

func _physics_process(delta):
	if (moving):
		var dislocation = Vector2(-sprite_speed, 0)
		move_and_slide(dislocation)
		if get_slide_count() > 0:
			_process_collision()

func _process_collision():
	get_tree().change_scene("res://scenes/minigame/intro_scene/intro_scene.tscn")


func _ready():
	moving = true
