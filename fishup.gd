extends Label

func _process(_delta) -> void:
	text="More Fish"+"\n"+"£"+str((global.inflation*100))+" Brought:"+str(int(global.fishup))

	if global.mode != global.modes.shop:
		text = ""
