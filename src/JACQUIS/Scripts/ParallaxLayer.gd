extends ParallaxLayer
export(float) var backgroundspeed = -225
var bgscroll = false

func _process(delta) -> void:
	if bgscroll == true:
		self.motion_offset.x += backgroundspeed * delta 
		
		if backgroundspeed >= -550:
			backgroundspeed -= 0.3
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	bgscroll = true
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
