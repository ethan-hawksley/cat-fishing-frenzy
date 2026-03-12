extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode == global.modes.shop or global.mode == global.modes.collection:
		show()
	else:
		hide()

func _on_pressed() -> void:
	if global.mode == global.modes.shop:
		global.mode = global.modes.collection
	else:
		global.mode = global.modes.shop
