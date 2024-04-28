class_name ParentFly extends Node2D


@export var move_speed:float = 1000
var direction = Vector2.RIGHT

@onready var bullet:Node2D = get_parent()


func _physics_process(delta):
	bullet.global_position += direction * move_speed * delta
