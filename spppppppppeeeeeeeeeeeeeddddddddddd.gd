extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(boatsboost)
	pass # pressed.connect(rodup)Replace with function body.
func boatsboost():
	if global.money >= global.inflation * 100:
		global.money = global.money - global.inflation * 100
		global.speed = global.speed + 0.025
		global.inflation = global.inflation * 1.1
		global.money = floor(global.money)
		global.inflation = ceil(global.inflation)
		print(global.inflation)
		print(global.money)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
