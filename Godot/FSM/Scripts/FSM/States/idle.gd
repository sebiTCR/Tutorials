# idle.gd
extends State


func on_state_enter():
  print("Entering state: ", self.name)


func on_state_update():
	if parent.is_moving:
		fsm.change_state("Moving")


func on_state_exit():
  print("Exiting state: ", self.name)
  pass
