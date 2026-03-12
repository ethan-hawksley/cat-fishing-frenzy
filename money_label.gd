extends Label

func _process(_delta) -> void:
	var formatted_money = "%.2f" % global.money
	text = "£" + formatted_money + "\nDepth: " + str(floor(global.depth/10.0)) + "m"
