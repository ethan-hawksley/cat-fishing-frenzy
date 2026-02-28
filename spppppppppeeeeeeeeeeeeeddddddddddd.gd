extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(boatsboost)
	pass # pressed.connect(rodup)Replace with function body.
func boatsboost():
	if global.money >= global.inflationfasterrod * 100:
		global.money = global.money - global.inflationfasterrod * 100
		global.speed = global.speed + 0.025
		global.inflationfasterrod = global.inflationfasterrod * 1.1
		global.money = floor(global.money)
		global.speedup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	disabled = global.money < global.inflation * 100
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
