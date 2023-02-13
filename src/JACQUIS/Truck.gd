extends KinematicBody2D

var truckXDeltaSpace = 3
var truckYDeltaSpace = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Movimento do caminhão para cima
	if Input.is_action_pressed("ui_up"):
			position.y -= truckYDeltaSpace

	#movimento do caminhão para baixo
	if Input.is_action_pressed("ui_down"):
			position.y += truckYDeltaSpace
