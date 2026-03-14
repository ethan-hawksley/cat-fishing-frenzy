extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = -380
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.betterducksmode == false:
		position.y = 5*sin(Time.get_ticks_msec()/250.0 + 1)
		position.x += -0.5*cos(Time.get_ticks_msec()/250.0 + 0.5)
		position.x += 0.1 
	else: 
		position.y = 1*sin(Time.get_ticks_msec()/250 + 1)
		position.x += -0.6*cos(Time.get_ticks_msec()/250 + 0.5)
		position.x += 0.2 * global.easymode
	if position.x > 330:
		position.x = -430

func _input(event):
	if event is InputEventKey and event.is_pressed():
		if event.keycode == 70:
			global.betterducksmode = true
			global.easymode += 1
	pass
