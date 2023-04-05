extends Node2D


var z = 0

# Inicia a cena e o timer do farol vermelho com um tempo aleatório
func _ready():
	var randomtime = RandomNumberGenerator.new()
	randomtime.randomize()
	var tempo= randomtime.randi_range(1,4)
	$tmr_Celular.wait_time = tempo
	$tmr_Celular.start()
	$SemafaroVazio/SemafaroVermelho.modulate.r = 1
	$SemafaroVazio/SemafaroVermelho.modulate.g = 1
	$SemafaroVazio/SemafaroVermelho.modulate.b = 1
	$Celular.visible = false


# Timeout para aparecer o celular
func _on_tmr_Celular_timeout():
	$Celular.visible = true
	var randomtime = RandomNumberGenerator.new()
	randomtime.randomize()
	var tempo= randomtime.randi_range(1,4)
	$Tmr_Vermelho.wait_time = tempo
	$Tmr_Vermelho.start()

# Lida com o timeout do farol vermelho
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
	
	
# Lida com o timeout do farol amarelo
func _on_Tmr_amarelo_timeout():
	z = 2


# TODO: Implement
func _on_tmr_Verde_timeout():
	pass
	
# Vai para a próxima cena no fluxo de jogo, seja gameover ou parabéns!
func _process(delta):
	if z == 1:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene("res://scenes/minigame/congrats_hole_scene/congrats_hole_scene.tscn")
	if z == 2:
		get_tree().change_scene("res://scenes/game_over_scene/game_over_scene.tscn")
