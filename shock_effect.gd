extends Sprite2D

var is_showing := false

func _process(_delta: float) -> void:
	if global.shock == 1 and not is_showing:
		is_showing = true
		global.shock = 0
		visible = true
		await get_tree().create_timer(2.0).timeout
		visible = false
		is_showing = false
