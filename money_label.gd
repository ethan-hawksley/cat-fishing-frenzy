extends Label

func _process(_delta) -> void:
	text = "£" + str(global.money) + "\nDepth: " + str(global.depth/100) + "m"
