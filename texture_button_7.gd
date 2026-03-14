extends TextureButton

func _ready() -> void:
	pressed.connect(lesssharks)

func lesssharks():
	var cost = snapped(global.inflationshark * 500, 0.01)
	if global.money >= cost:
		AudioManager.play_sfx("click")
		global.money = global.money - cost
		global.sharkchance = global.sharkchance * 1.025
		global.inflationshark = global.inflationshark * 2.5
		global.money = snapped(global.money, 0.01)
		global.lesssharkss += 1

func _process(_delta: float) -> void:
	var cost = snapped(global.inflationshark * 500, 0.01)
	disabled = global.money < cost or global.lesssharkss >= 5
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
