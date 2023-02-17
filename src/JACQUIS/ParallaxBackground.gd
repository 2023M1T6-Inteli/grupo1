extends ParallaxBackground
export (float) var scrolling_speed = 250.0

func _process(delta):
	# Gradually increases the speed of the game up to 500.0
	if scrolling_speed <= 500:
		scrolling_speed += delta
		print(scrolling_speed)

	scroll_offset.x -= scrolling_speed * delta
