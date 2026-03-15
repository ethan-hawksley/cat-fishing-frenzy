extends Label

func _process(_delta: float) -> void:
	if global.mode != global.modes.shop:
		text = ""
