extends Node2D

# Exibe o nome e pontuação do jogador
func _ready():
	Global.score = 0
	$Label2.text = "Olá " + Global.nome + "! Sou o Jacquis. Vou te instruir durante essa jornada, desenvolvida por alunos do Inteli."


# Vai para a próxima cena no fluxo de jogo
func _on_Btn_comecar_pressed():
	get_tree().change_scene("res://scenes/checklist_scene/checklist_scene.tscn")
