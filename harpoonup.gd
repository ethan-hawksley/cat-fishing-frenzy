extends Label

func _process(_delta) -> void:
	text="Harpoon"+"\n"+"£"+str((global.inflation*100))+" Brought:"+str(global.harpoonup)

	if global.mode != global.modes.shop:
		text = ""
