extends TextureButton

func _ready() -> void:
	pressed.connect(rodup)
	
func rodup():
	var cost = snapped(global.inflationlongerline * 115, 0.01)
	if global.money >= cost:
		AudioManager.play_sfx("click")
		global.money = global.money - cost
		global.length = global.length + 100
		global.inflationlongerline = global.inflationlongerline * 1.1
		global.money = snapped(global.money, 0.01)
		global.longerup += 1

func _process(_delta: float) -> void:
	var cost = snapped(global.inflationlongerline * 115, 0.01)
	disabled = global.money < cost
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
