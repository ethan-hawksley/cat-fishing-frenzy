extends TouchScreenButton

func _process(_delta: float) -> void:
	if global.mode == global.modes.descending:
		show()
	else:
		hide()
