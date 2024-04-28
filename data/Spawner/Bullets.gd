extends Node2D


func spawn(bullet, _position, _direction, _rotation):
	bullet.global_position = _position
	var bullet_fly = bullet.get_node("BulletFly")
	bullet_fly.direction = _direction
	bullet_fly.rotation = _rotation
