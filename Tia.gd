extends StaticBody2D

var flip = true
var posicao_inicial 
var posicao_final
var velocidade = 3.4

func _ready():
	$Sprite.play("Walk")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial+100
	
func _process(delta):
	
	if(posicao_inicial<=posicao_final and flip):
		$".".position.x += velocidade
