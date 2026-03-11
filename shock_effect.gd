extends Sprite2D
var already_shocked = false

func shocked():
	self.visible = true
	already_shocked = true
	global.shock = 0
	
func _process(delta: float) -> void:
	if global.shock == 1 and not already_shocked:
		shocked()
		await get_tree().create_timer(2.0).timeout
		self.visible = false
	pass
