extends Node2D

var target: Node2D = null

func _process(delta: float) -> void:
	if target == null or not is_instance_valid(target):
		queue_free()
		return

	var dir = (target.global_position - global_position).normalized()
	global_position += dir * global.harpspeed * delta

	if global_position.distance_to(target.global_position) < 10.0:
		target.queue_free()
		queue_free()
