extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var velocidade = -300
var Jogo

func _ready():
	Jogo = get_tree().get_current_scene()
	set_process(true)
	pass
func _process(delta):
	set_pos(get_pos() + Vector2(velocidade * delta,0))
	
	if get_pos().x < -200:
		queue_free()
	pass	
func _on_Area2D_body_enter( body ):
	if body.get_name() == "Flapio":
		Jogo.GameOver()
	pass
func _on_Pontuador_body_enter( body ):
	Jogo.Pontuacao()
	pass # replace with function body
