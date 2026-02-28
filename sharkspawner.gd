extends Node2D
@export var hook: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global.time_left_until_spawn -= delta
	if global.time_left_until_spawn <= 0:
		global.time_left_until_spawn += global.time_per_spawn
		if global.mode == global.modes.descending:
			spawn_shark()
	pass
func spawn_shark() -> void:
	
	
	.position = hook.position
	fish.position.x += randf_range(-300, 300)
	fish.position.y += randf_range(100, 400)
	
	add_child(fish)
	
