extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global.mode == global.modes.descending:
		position.y += (global.speed*10)
		if Input.is_action_pressed("ui_left"):
			position.x -= (global.speed*20)
		if Input.is_action_pressed("ui_right"):
			position.x += (global.speed*20)
	if global.mode == global.modes.ascending:
		if position.y > 0:
			position.y -= (global.speed*10)
		if position.x < -64:
			position.x += (global.speed*20)
		if position.x > -64:
			position.x -= (global.speed*20)
		if position.x == -64 and position.y == 0:
			global.mode = global.modes.shop
			
			global.money += global.caught_fish * 100
			global.caught_fish = 0
			
	if global.mode == global.modes.shop:
		position.x == -64
		position.y == 0
	if position.y >= global.length:
		global.mode = global.modes.ascending
