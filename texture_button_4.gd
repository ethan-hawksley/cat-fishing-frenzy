extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(harpoonkill)
	pass # Replace with function body.
func harpoonkill():
	if global.harptime > 0.1:
		if global.money >= global.inflationharpoon * 75:
			global.money = global.money - global.inflationharpoon * 75
			global.harptime = global.harptime - 0.75
			global.inflationharpoon = global.inflationharpoon * 1.1
			global.money = snapped(global.money,0.01)
			global.harpoonup += 1
	elif global.harptime <= 0.1 and global.harpspeed < 600:
		if global.money >= global.inflationharpoon * 75:
			global.money = global.money - global.inflationharpoon * 75
			global.harpspeed += 50
			global.inflationharpoon = global.inflationharpoon * 1.1
			global.money = snapped(global.money,0.01)
			global.harpoonup += 1
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	disabled = global.money < global.inflationharpoon * 75
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
