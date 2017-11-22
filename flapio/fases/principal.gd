extends Node2D

onready var Flapio = get_node("Flapio")
onready var Fundo = get_node("Fundo")
onready var GameOverTimer = get_node("GameOver")
onready var PontosTXT = get_node("PreInterface/Interface/Label")
onready var PontosSom = get_node("Ponto")

var pontuacao = 0
var estado = 0

const INGAME = 1
const GAMEOVER = 2


func _ready():

	pass
func GameOver():
	Flapio.apply_impulse(Vector2(0,0), Vector2(-800,0))
	Fundo.stop()
	estado = GAMEOVER
	GameOverTimer.start()
	pass

func _on_GameOver_timeout():
	get_tree().reload_current_scene()
	pass
func Pontuacao():
	pontuacao += 1
	PontosTXT.set_text(str(pontuacao))
	PontosSom.play()
	