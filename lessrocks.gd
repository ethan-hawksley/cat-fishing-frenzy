extends TextureButton

func _ready() -> void:
	pressed.connect(lessrock)

func lessrock():
	var cost = snapped(global.inflationrock * 75, 0.01)
	if global.money >= cost:
		AudioManager.play_sfx("click")
		global.money = global.money - cost
		global.rockchance = global.rockchance * 0.95
		global.inflationrock = global.inflationrock * 1.3
		global.money = snapped(global.money, 0.01)
		global.lessroccks += 1

func _process(_delta: float) -> void:
	var cost = snapped(global.inflationrock * 75, 0.01)
	disabled = global.money < cost
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
