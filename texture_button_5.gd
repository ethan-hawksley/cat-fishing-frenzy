extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(morefish)
	pass # Replace with function body.
func morefish():
	if global.money >= global.inflationmorefish * 50:
		AudioManager.play_sfx("click")
		global.money = global.money - global.inflationmorefish * 50
		global.time_per_spawn = global.time_per_spawn * 0.92
		global.inflationmorefish = global.inflationmorefish * 1.75
		global.money = snapped(global.money,0.01)
		global.fishup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	disabled = global.money < global.inflationmorefish * 50
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
