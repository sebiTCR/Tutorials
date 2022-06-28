# State.gd
class_name State
extends Node

onready var fsm = get_parent()
onready var parent = fsm.get_parent()

func on_state_enter():
  pass


func on_state_update():
  pass


func on_state_exit():
  pass
