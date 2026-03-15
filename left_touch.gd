extends TouchScreenButton

func _process(delta: float) -> void:
	if global.mode == global.modes.descending:
		show()
	else:
		hide()
