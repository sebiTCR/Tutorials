# moving.gd
extends State


func on_state_enter():
  print("Entering state: ", self.name)


func on_state_update():
	if !parent.is_moving:
		fsm.change_state("Idle")

	if Input.is_action_pressed("move_left"):
		parent.move_and_collide(Vector2(5,0))
	elif Input.is_action_pressed("move_right"):
		parent.move_and_collide(Vector2(-5,0))



func on_state_exit():
  print("Exiting state: ", self.name)
  pass
