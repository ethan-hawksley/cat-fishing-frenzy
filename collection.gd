extends CanvasLayer

@export var collection: Control

func _process(delta: float) -> void:
	if global.mode == global.modes.collection:
		collection.show()
	else:
		collection.hide()
