extends TextureButton

func _ready() -> void:
	pressed.connect(harpoonkill)

func harpoonkill():
	var cost = snapped(global.inflationharpoon * 75, 0.01)
	if global.harptime > 0.1:
		if global.money >= cost:
			AudioManager.play_sfx("click")
			global.money = global.money - cost
			global.harptime = global.harptime - 0.75
			global.inflationharpoon = global.inflationharpoon * 1.1
			global.money = snapped(global.money, 0.01)
			global.harpoonup += 1
	elif global.harptime <= 0.1 and global.harpspeed < 600:
		if global.money >= cost:
			AudioManager.play_sfx("click")
			global.money = global.money - cost
			global.harpspeed += 50
			global.inflationharpoon = global.inflationharpoon * 2
			global.money = snapped(global.money, 0.01)
			global.harpoonup += 1

func _process(_delta: float) -> void:
	var cost = snapped(global.inflationharpoon * 75, 0.01)
	disabled = global.money < cost or global.harpoonup >= 12
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
