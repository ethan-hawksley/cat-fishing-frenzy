extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(lesssharks)
	pass # Replace with function body.
func lesssharks():
	if global.sharkchance < 0.95:
		if global.money >= global.inflationshark * 50:
			global.money = global.money - global.inflationshark * 50
			global.sharkchance = global.sharkchance * 1.025
			global.inflationshark = global.inflationshark * 1.1
			global.money = snapped(global.money,0.01)
			global.lesssharkss += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global.money < global.inflationshark * 50 or global.lesssharkss == 5:
		disabled = true
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
