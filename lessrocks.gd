extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(lessrock)
	pass # Replace with function body.
func lessrock():
	if global.money >= global.inflationrock * 50:
		global.money = global.money - global.inflationrock * 50
		global.rockchance = global.rockchance * 0.80
		global.inflationrock = global.inflationrock * 1.1
		global.money = snapped(global.money,0.01)
		global.lessroccks += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.money < global.inflationrock * 50 :
		disabled = true
	modulate = Color.WHITE if not disabled else Color(1, 1, 1, 0.4)
	pass
