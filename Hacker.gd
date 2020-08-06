extends KinematicBody2D
onready var fundo = $fundo

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -550
var life = 1
var movimentacao = Vector2()
var passar



func _physics_process(delta):
	
	movimentacao.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		movimentacao.x = SPEED
		$Sprite.play("Andando")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		movimentacao.x = -SPEED
		$Sprite.play("Andando")
		$Sprite.flip_h = true
	else:
		movimentacao.x = 0
		$Sprite.play("Parado")
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			movimentacao.y = JUMP_HEIGHT
	else: 
		$Sprite.play("Pular")
	
	movimentacao = move_and_slide(movimentacao, UP)



func _on_Dano_body_entered(body):
	life -=1
	if life == 0: 
		get_tree().change_scene("res://GameOver.tscn")


