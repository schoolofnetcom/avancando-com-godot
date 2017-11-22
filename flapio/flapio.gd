extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process_input(true)
	pass
func _input(event):
	if event.is_action_pressed("toque"):
		Pulo()
	pass
func Pulo():
	apply_impulse(Vector2(0,0), Vector2(0,-1000))
	pass
