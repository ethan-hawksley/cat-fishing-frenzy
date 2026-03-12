extends CanvasLayer

@export var shop: Control

func _process(_delta: float) -> void:
	if global.mode == global.modes.shop:
		shop.show()
	else:
		shop.hide()
