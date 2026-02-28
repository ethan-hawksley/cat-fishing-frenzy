extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global.mode == global.modes.descending:
		position.y += (global.speed*global.length)
		if Input.is_action_pressed("ui_left"):
			position.x -= (global.speed*5)
		if Input.is_action_pressed("ui_right"):
			position.x += (global.speed*5)
