extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = -380
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = 1*sin(Time.get_ticks_msec()/250 + 1)
	position.x += -0.6*cos(Time.get_ticks_msec()/250 + 0.5)
	position.x += global.sneaky
	if position.x > 330:
		position.x = -430
	pass
