extends Node2D
@export var hook: Node2D

var fish_scene = preload("res://fish.tscn")
var shark_scene = preload("res://shark.tscn")

func _process(delta: float) -> void:
	global.time_left_until_spawn -= delta
	if global.time_left_until_spawn <= 0:
		global.time_left_until_spawn += global.time_per_spawn
		if global.mode == global.modes.descending:
			if randf() < 0.40:
				spawn_entity()
			else:
				spawn_shark()
				
func spawn_shark() -> void:
	var shark = shark_scene.instantiate()
	shark.position = hook.position
	shark.position.x += randf_range(-300, 300)
	shark.position.y += randf_range(100, 400)
	
	add_child(shark)
	
func spawn_entity() -> void:
	var fish = fish_scene.instantiate()
	
	fish.position = hook.position
	fish.position.x += randf_range(-300, 300)
	fish.position.y += randf_range(100, 400)
	
	add_child(fish)
	
