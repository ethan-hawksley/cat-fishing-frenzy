extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(harpoonkill)
	pass # Replace with function body.
func harpoonkill():
	if global.harptime != 0:
		if global.money >= global.inflationharpoon * 75:
			global.money = global.money - global.inflationharpoon * 75
			global.harptime = global.harptime - 0.75
			global.inflationharpoon = global.inflationharpoon * 1.1
			global.money = floor(global.money)
			global.harpoonup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
