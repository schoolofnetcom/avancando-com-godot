extends Position2D

onready var CanoComponent = preload("res://componentes/Cano.tscn")

func _ready():

	pass
	
func _on_Timer_timeout():
	var cano = CanoComponent.instance()
	cano.set_pos(get_pos() + Vector2(0, rand_range(-160,160)))
	get_owner().add_child(cano)
