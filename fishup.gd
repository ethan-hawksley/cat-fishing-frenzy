extends Label

func _process(_delta) -> void:
	text="More Fish"+"\n"+"£"+str((global.inflation*50))+" Bought:"+str(int(global.fishup))

	if global.mode != global.modes.shop:
		text = ""
