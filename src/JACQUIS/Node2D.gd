extends Node2D


# Variaveis
var car = 2.5
var truck = 1.5

# executa essa função ao carregar o jogo
func _ready():
	pass # Replace with function body.


# executa essa função a cada frame
func _process(delta):
	
	#Faz o carro verde ir para a esquerda e reaparecer 
	$carro_ver.position.x -= 2*car
	if ($carro_ver.position.x) < -200:
			($carro_ver).position.x = 1700
	
	#Faz o carro vermelho ir para a esquerda e reaparecer
	$carro_red.position.x -= 2*car
	if ($carro_red.position.x) < -200:
			$carro_red.position.x = 1700
	
	#Movimento do caminhão para a direita
	if Input.is_action_pressed("ui_right"):
			$Caminhao.position.x += 2*truck
		
	#Movimento do caminhão para a esquerda
	if Input.is_action_pressed("ui_left"):
			$Caminhao.position.x -= 2*truck
	
	#Movimento do caminhão para cima 
	if Input.is_action_pressed("ui_up"):
			$Caminhao.position.y -= 2*truck
		
	#movimento do caminhão para baixo
	if Input.is_action_pressed("ui_down"):
			$Caminhao.position.y += 2*truck
			
			
			
		
#	pass
