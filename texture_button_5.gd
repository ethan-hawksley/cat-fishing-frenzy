extends TextureButton

func _ready() -> void:
	pressed.connect(morefish)

func morefish():
	var cost = snapped(global.inflationmorefish * 50, 0.01)
	if global.money >= cost:
		AudioManager.play_sfx("click")
		global.money = global.money - cost
		global.time_per_spawn = global.time_per_spawn * 0.92
		global.inflationmorefish = global.inflationmorefish * 1.75
		global.money = snapped(global.money, 0.01)
		global.fishup += 1

func _process(_delta: float) -> void:
	var cost = snapped(global.inflationmorefish * 50, 0.01)
	disabled = global.money < cost
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
