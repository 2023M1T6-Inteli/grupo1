extends ParallaxBackground
export (float) var scrolling_speed = 250.0

# Scrolls the background by an offset on X
func scrollBackground(offset):
	scroll_offset.x -= offset

func _process(delta):
	_increaseScrollingSpeed(delta)
	scrollBackground(scrolling_speed * delta)

# Gradually increases the speed of the game up to 500.0
func _increaseScrollingSpeed(delta):
	if scrolling_speed <= 500:
		scrolling_speed += delta
