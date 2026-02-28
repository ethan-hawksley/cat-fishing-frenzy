extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(morefish)
	pass # Replace with function body.
func morefish():
	if global.money >= global.inflationmorefish * 50:
		global.money = global.money - global.inflationmorefish * 50
		global.time_per_spawn = global.time_per_spawn + 0.1
		global.inflationmorefish = global.inflationmorefish * 1.1
		global.money = floor(global.money)
		global.fishup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	disabled = global.money < global.inflation * 50
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
