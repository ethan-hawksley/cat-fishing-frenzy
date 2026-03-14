extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global.depth = position.y
	if global.mode == global.modes.descending:
		$Camera2D.enabled = true
		position.y += (global.speed*600 * delta)
		if Input.is_action_pressed("ui_left"):
			position.x -= (global.speed*1200 * delta)
		if Input.is_action_pressed("ui_right"):
			position.x += (global.speed*1200 * delta)
	if global.mode == global.modes.ascending:
		position.y -= (global.speed*1200 * delta)
		position.x = move_toward(position.x, -64, global.speed * 1200 * delta)
		if position.x < -60 and position.x > -68 and position.y <= 0:
			AudioManager.stop_reel()
			if global.caught_fish > 0 or global.value_of_reeled_fish > 0:
				AudioManager.play_sfx("money")
			global.mode = global.modes.shop
			global.money += global.value_of_reeled_fish
			global.value_of_reeled_fish = 0
			global.caught_fish = 0
			position.y = 0
			
	if global.mode == global.modes.shop:
		$Camera2D.enabled = true
		position.x = -64
		position.y = 0
	if (position.x - -64)**2 + (global.depth)**2 >= (global.length)**2:
		global.mode = global.modes.ascending
		AudioManager.play_reel()
