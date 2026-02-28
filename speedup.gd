extends Label

func _process(_delta) -> void:
	text="Faster Rod"+"\n"+"£"+str((global.inflation*100))+" Brought:"+str(int(global.speedup))

	if global.mode != global.modes.shop:
		text = ""
