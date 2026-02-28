extends Node2D
@export var hook: Node2D

var fish_scene = preload("res://fish.tscn")

func _process(delta: float) -> void:
	global.time_left_until_spawn -= delta
	if global.time_left_until_spawn <= 0:
		global.time_left_until_spawn += global.time_per_spawn
		spawn_entity()
		
	if delta > randf():
		print("thing")

func spawn_entity() -> void:
	var fish = fish_scene.instantiate()
	
	fish.position = hook.position
	fish.position.x += randf_range(-300, 300)
	fish.position.y += randf_range(100, 400)
	
	add_child(fish)
