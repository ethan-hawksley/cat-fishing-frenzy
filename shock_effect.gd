extends Sprite2D

func shocked():
	self.visible = true
	global.shock = 0
	
func _process(_delta: float) -> void:
	if global.shock == 1:
		shocked()
		await get_tree().create_timer(2.0).timeout
		self.visible = false
	pass
