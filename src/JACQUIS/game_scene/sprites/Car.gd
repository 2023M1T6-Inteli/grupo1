extends KinematicBody2D


var moving = true
const ROW_XVALS = { 0: 302, 1: 411, 3: 527}
# We add 12% to the sprite_speed so it doesn't seem like it's stuck to the background
var sprite_speed = 225.0 * 1.22

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sprite_speed <= 750 and OS.get_ticks_msec() > 10000:
		sprite_speed += int(floor((OS.get_ticks_msec() - 10000) / 5000.0))

func _physics_process(delta):
	if (moving):
		var dislocation = Vector2(-sprite_speed, 0)
		move_and_slide(dislocation)
