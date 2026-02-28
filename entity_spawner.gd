extends Node2D

func _process(delta: float) -> void:
	global.time_until_spawn -= global.spawn_s
	if delta > randf():
		print("thing")
