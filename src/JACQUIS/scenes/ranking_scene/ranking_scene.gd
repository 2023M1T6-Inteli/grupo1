extends Node2D


func _ready():
	var ranking = File.new()
	if ranking.file_exists("user://ranking.save"):
		ranking.open("user://ranking.save", File.READ)
		$scroll/ranking.text = ranking.get_as_text()
	ranking.close()


func _on_btnVoltar_pressed():
	get_tree().change_scene("res://scenes/main_scene/main_scene.tscn")
