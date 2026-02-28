extends Label

func _process(_delta) -> void:
	text="Harpoon"+"\n"+"£"+str((global.inflation*75))+" Bought:"+str(int(global.harpoonup))

	if global.mode != global.modes.shop:
		text = ""
