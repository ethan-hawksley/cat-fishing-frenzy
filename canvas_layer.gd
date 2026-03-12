extends CanvasLayer

@export var shop: Control
@export var collection: Node2D

func _process(_delta: float) -> void:
	if global.mode == global.modes.shop:
		shop.show()
		collection.hide()
	elif global.mode == global.modes.collection:
		shop.hide()
		collection.show()
	else:
		shop.hide()
		collection.hide()
