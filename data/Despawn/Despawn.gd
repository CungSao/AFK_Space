class_name Despawn extends Node2D


func _process(delta):
	despawning()


func despawning():
	if !can_despawn(): return
	despawn_object()


func despawn_object():
	get_parent().queue_free()


func can_despawn():
	pass
