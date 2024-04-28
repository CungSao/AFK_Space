extends Node2D

@onready var ship:Node2D = get_parent()


func _physics_process(_delta):
	running()
	

func running():
	var default_speed:float = ship.speed
	
	if InputManager.get_input_run():
		ship.speed = default_speed * 3
	else:
		ship.speed = default_speed
		
