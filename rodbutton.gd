extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(rodup)
	pass # Replace with function body.
	
func rodup():
	if global.money >= global.inflationlongerline * 115:
		global.money = global.money - global.inflationlongerline * 115
		global.length = global.length + 50
		global.inflationlongerline = global.inflationlongerline * 1.1
		global.money = floor(global.money)
		global.longerup += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(_delta: float) -> void:
	disabled = global.money < global.inflationlongerline * 115
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
