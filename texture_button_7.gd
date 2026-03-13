extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(lesssharks)
	pass # Replace with function body.
func lesssharks():
	if global.sharkchance < 0.95:
		if global.money >= global.inflationshark * 500:
			global.money = global.money - global.inflationshark * 500
			global.sharkchance = global.sharkchance * 1.025
			global.inflationshark = global.inflationshark * 5
			global.money = snapped(global.money,0.01)
			global.lesssharkss += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	disabled = global.money < global.inflationshark * 500 or global.lesssharkss >= 5
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
