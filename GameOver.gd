extends Control



func _on_JogarNovamente_pressed():
	get_tree().change_scene("res://Mundo.tscn")


func _on_SairDoJogo_pressed():
	get_tree().quit()
