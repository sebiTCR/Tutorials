class_name FiniteStateMachine
extends Node

var _current_state = null

func _ready():
  _current_state = get_child(0)
  _current_state.on_state_enter()


func change_state(state: String):
  _current_state.on_state_exit()
  _current_state = get_node(state)
  _current_state.on_state_enter()


func _process(_delta):
  _current_state.on_state_update()
