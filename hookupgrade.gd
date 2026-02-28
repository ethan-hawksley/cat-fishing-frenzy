extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(hookup)
	pass # Replace with function body.
func hookup():
	if global.money >= global.inflation * 100:
		global.money = global.money - global.inflation * 100
		global.max_fish = global.max_fish + 1
		global.inflation = global.inflation * 1.1
		global.money = floor(global.money)
		global.inflation = ceil(global.inflation)
		print(global.inflation)
		print(global.money)
		global.catchup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
