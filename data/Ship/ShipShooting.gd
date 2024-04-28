extends Node2D


@export var bullet_spawner_path:NodePath
@export var BULLET:PackedScene

@onready var bullet_spawner = get_node(bullet_spawner_path)
@onready var shoot_timer = get_parent().get_node("Shoot_Timer")
@onready var ship = get_parent()


func _physics_process(_delta):
	shooting()


func shooting():
	if !on_shooting(): return
	
	if shoot_timer.is_stopped():
		var bullet = BULLET.instantiate()
		bullet_spawner.add_child(bullet)
		bullet_spawner.spawn(bullet, pos(), dir(), rot())
		shoot_timer.start()


func on_shooting():
	return InputManager.get_mouse_down()


func pos():
	return ship.global_position

func dir():
	return ship.get_node("ShipMovement").get_dir()

func rot():
	return dir().angle()
