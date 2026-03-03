extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	
func _draw() -> void:
	if global.mode != global.modes.ascending:
		draw_arc(Vector2(-64, 0), global.length, -TAU, -PI, 64, Color.RED, 2)
