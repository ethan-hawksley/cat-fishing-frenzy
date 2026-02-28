extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(harpoonkill)
	pass # Replace with function body.
func harpoonkill():
	if global.harptime != 0:
		if global.money >= global.inflation * 100:
			global.money = global.money - global.inflation * 100
			global.harptime = global.harptime - 0.5
			global.inflation = global.inflation * 1.1
			global.money = floor(global.money)
			global.inflation = ceil(global.inflation)
			global.harpoonup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
