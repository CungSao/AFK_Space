extends Node2D

@export var current_speed:float = 0.01
var default_speed = current_speed

var target_pos:Vector2
var target_dir:Vector2

@onready var ship:Node2D = get_parent()


func _physics_process(_delta):
	get_target()
	look_at_target()
	running()
	moving()


func running():
	if InputManager.get_input_run():
		current_speed += 0.005
		current_speed = clamp(current_speed, 0, 0.4)
		print(current_speed)
	else:
		current_speed = default_speed
	

func get_target():
	target_pos = InputManager.get_mouse_pos()


func look_at_target():
	target_dir = (target_pos - ship.global_position).normalized()
	ship.rotation = target_dir.angle() as float


func moving():
	if !dis_limit_to_target(): return
	# LERP - SMOOTH from A to B
	var new_pos:Vector2 = lerp(ship.global_position, target_pos, current_speed)
	ship.global_position = new_pos
	

func get_dir():
	return target_dir


func dis_limit_to_target(dis_limit:float = 30):
	return ship.global_position.distance_to(target_pos) > dis_limit
