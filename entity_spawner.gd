extends Node2D

func _process(delta: float) -> void:
	global.time_left_until_spawn -= delta
	if global.time_left_until_spawn <= 0:
		global.time_left_until_spawn += global.time_per_spawn
		spawn_entity()
		
	if delta > randf():
		print("thing")

func spawn_entity() -> void:
	pass
