extends Node2D


var z = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var randomtime = RandomNumberGenerator.new()
	randomtime.randomize()
	var tempo= randomtime.randi_range(1,10)
	$Tmr_Vermelho.wait_time = tempo
	$Tmr_Vermelho.start()
	$SemafaroVazio/SemafaroVermelho.modulate.r = 1
	$SemafaroVazio/SemafaroVermelho.modulate.g = 1
	$SemafaroVazio/SemafaroVermelho.modulate.b = 1
	$Celular.visible = false



func _on_Tmr_Vermelho_timeout():
	$Celular.visible = true
	$Tmr_amarelo.start()
	$SemafaroVazio/SemafaroVermelho.modulate.r = 0.6
	$SemafaroVazio/SemafaroVermelho.modulate.g = 0.6
	$SemafaroVazio/SemafaroVermelho.modulate.b = 0.6
	$SemafaroVazio/SemafaroVerde.modulate.r = 1
	$SemafaroVazio/SemafaroVerde.modulate.g = 1
	$SemafaroVazio/SemafaroVerde.modulate.b = 1
	z = 1
	
func _on_Tmr_amarelo_timeout():
	z = 2

func _on_tmr_Verde_timeout():
	pass
	
func _process(delta):
	if z == 1:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene("res://scenes/minigame/congrats_hole_scene/congrats_hole_scene.tscn")
	if z == 2:
		get_tree().change_scene("res://scenes/game_over_scene/game_over_scene.tscn")
