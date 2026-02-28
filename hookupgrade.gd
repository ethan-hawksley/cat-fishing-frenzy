extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(hookup)
	pass # Replace with function body.
func hookup():
	if global.money >= global.inflationcatchmore * 50:
		global.money = global.money - global.inflationcatchmore * 50
		global.max_fish = global.max_fish + 1
		global.inflationcatchmore = global.inflationcatchmore * 1.1
		global.money = floor(global.money)
		global.inflationcatchmore = ceil(global.inflationcatchmore)

		global.catchup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
