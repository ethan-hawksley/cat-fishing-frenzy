extends TextureButton

func _ready() -> void:
	pressed.connect(boatsboost)

func boatsboost():
	var cost = snapped(global.inflationfasterrod * 100, 0.01)
	if global.money >= cost:
		AudioManager.play_sfx("click")
		global.money = global.money - cost
		global.speed = global.speed + 0.015
		global.inflationfasterrod = global.inflationfasterrod * 1.5
		global.money = snapped(global.money, 0.01)
		global.speedup += 1

func _process(_delta: float) -> void:
	var cost = snapped(global.inflationfasterrod * 100, 0.01)
	disabled = global.money < cost
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
