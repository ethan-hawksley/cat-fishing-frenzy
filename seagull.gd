extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.y = 5*sin(Time.get_ticks_msec()/250.0 + 1) - 150
	position.x -= -0.5*cos(Time.get_ticks_msec()/250.0 + 0.5)
	position.x -= 1 
	if position.x < -430:
		position.x = 330
