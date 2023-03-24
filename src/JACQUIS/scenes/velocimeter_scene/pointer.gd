extends Sprite


func _process(delta):
	if self.rotation_degrees >= -125:
		self.rotation_degrees -= 1
	if self.rotation_degrees < -125:
		self.rotation_degrees -= 0
	if Input.is_action_just_pressed("ui_cancel"):
		self.rotation_degrees +=11



func _on_Timer_timeout():
	print(self.rotation_degrees)
	if self.rotation_degrees > (-25) and self.rotation_degrees < (25):
		get_tree().change_scene("res://scenes/game_scene/NodeRoad.tscn")
