extends TextureButton

func _ready() -> void:
	pressed.connect(hookup)

func hookup():
	var cost = snapped(global.inflationcatchmore * 60, 0.01)
	if global.money >= cost:
		AudioManager.play_sfx("click")
		global.money = global.money - cost
		global.max_fish = (global.max_fish + 2) * 1.1
		global.inflationcatchmore = global.inflationcatchmore * 1.15
		global.money = snapped(global.money, 0.01)
		global.inflationcatchmore = ceil(global.inflationcatchmore)
		global.catchup += 1

func _process(_delta: float) -> void:
	var cost = snapped(global.inflationcatchmore * 60, 0.01)
	disabled = global.money < cost
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
