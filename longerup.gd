extends Label

func _process(_delta) -> void:
	text="Longer Line"+"\n"+"£"+str((global.inflation*100))+" Brought:"+str(int(global.longerup))

	if global.mode != global.modes.shop:
		text = ""
