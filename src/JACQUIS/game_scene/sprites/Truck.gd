extends KinematicBody2D

const Y_DELTA = 450

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Use _physics_process(delta) when using Kinematic2D (according to docs)
func _physics_process(delta):
	var dislocation = Vector2(0, 0)

	# Movimento do caminhão para cima
	if Input.is_action_pressed("ui_up"):
		dislocation.y = -1 * Y_DELTA

	# Movimento do caminhão para baixo
	elif Input.is_action_pressed("ui_down"):
		dislocation.y = Y_DELTA

	# Faz o movimento com colisão em 2D
	move_and_slide(dislocation)
