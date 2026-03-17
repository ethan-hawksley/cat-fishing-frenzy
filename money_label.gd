extends Label

func _process(_delta) -> void:
	var formatted_money = "%.2f" % global.money
	text = "£" + formatted_money + "\nDepth: " + str(floor(global.depth/10.0)) + "m"
	if global.mode == global.modes.collection:
		var total_fish = 0
		for i in global.collection:
			total_fish += i
		text = text+"\nTotal Fish: "+str(total_fish)
