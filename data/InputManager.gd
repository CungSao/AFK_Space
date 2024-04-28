extends Node2D


func get_input_run():
	return Input.is_action_pressed("run")


func get_mouse_down():
	return Input.is_action_pressed("fire1")


func get_mouse_pos():
	return get_global_mouse_position()
