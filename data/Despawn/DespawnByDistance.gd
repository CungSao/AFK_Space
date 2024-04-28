class_name DespawnByDistance extends Despawn


@export var dis_limit:float = 300
@export var distance:float = 0.0

@onready var start_pos:Vector2 = get_node("/root/Main/Ship").global_position


func can_despawn():
	var distance = start_pos.distance_to(get_parent().global_position)
	return distance > dis_limit

