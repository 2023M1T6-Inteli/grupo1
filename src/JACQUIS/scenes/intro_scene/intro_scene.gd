extends Node2D

# Exibe o nome e pontuação do jogador
func _ready():
	Global.score = 0
	$Label2.text = "Olá " + Global.nome + "! Sou o Jacquis. Vou te instruir durante essa jornada, desenvolvida por alunos do Inteli."
