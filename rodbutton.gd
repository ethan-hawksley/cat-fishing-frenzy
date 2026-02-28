extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(rodup)
	pass # Replace with function body.
	
func rodup():
	if global.money >= global.inflation * 100:
		global.money = global.money - global.inflation * 100
		global.length = global.length + 100
		global.inflation = global.inflation * 1.1
		global.money = floor(global.money)
		global.inflation = ceil(global.inflation)
		print(global.inflation)
		print(global.money)

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(_delta: float) -> void:
	pass
