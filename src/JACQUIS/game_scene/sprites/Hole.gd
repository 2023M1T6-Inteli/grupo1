extends KinematicBody2D

var moving = true
var sprite_speed = 225.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sprite_speed <= 750 and OS.get_ticks_msec() > 10000:
		sprite_speed += int(floor((OS.get_ticks_msec() - 10000) / 5000.0))

func _physics_process(delta):
	if (moving):
		var dislocation = Vector2(-sprite_speed, 0)
		move_and_slide(dislocation)
		if get_slide_count() > 0:
			_process_collision()

func _process_collision():
	get_tree().change_scene("res://checklist_scene/Instruções.tscn")
