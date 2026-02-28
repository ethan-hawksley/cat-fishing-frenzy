extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(morefish)
	pass # Replace with function body.
func morefish():
	if global.money >= global.inflation * 100:
		global.money = global.money - global.inflation * 100
		global.time_per_spawn = global.time_per_spawn + 0.01
		global.inflation = global.inflation * 1.1
		global.money = floor(global.money)
		global.inflation = ceil(global.inflation)
		print(global.inflation)
		print(global.money)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
