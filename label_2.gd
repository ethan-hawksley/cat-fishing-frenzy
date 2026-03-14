extends Label

func _process(_delta: float) -> void:
	if global.mode != global.modes.shop:
		text = ""
	else:
		text = "Use Left and Right
Arrow Keys to steer"
