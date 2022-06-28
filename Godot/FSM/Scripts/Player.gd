extends KinematicBody2D

var is_moving = false

func _process(_delta):
	if Input.is_action_pressed("move_right") or Input.is_action_pressed("move_left"):
		is_moving = true
	else:
		is_moving = false
