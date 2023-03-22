extends KinematicBody2D


var moving = false
const ROW_XVALS = { 0: 302, 1: 411, 3: 527}
# We add 12% to the sprite_speed so it doesn't seem like it's stuck to the background
var sprite_speed = 100.0 * 1.22

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving == true:
		if sprite_speed <= 400 * 1.22:
			sprite_speed += 0.3

func _physics_process(delta):
	if (moving):
		var dislocation = Vector2(-sprite_speed, 0)
		move_and_slide(dislocation)
		if get_slide_count() > 0:
			_process_collision()

func _process_collision():
	get_tree().change_scene("res://scenes/minigame_hole/intro_scene/intro_scene.tscn")

func _ready():
	moving = true
