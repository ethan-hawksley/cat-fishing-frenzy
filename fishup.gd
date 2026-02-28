extends Label

func _process(_delta) -> void:
	text="More Fish"+"\n"+"£"+str(ceil((global.inflationmorefish*50)))+" Brought:"+str(int(global.fishup))

	if global.mode != global.modes.shop:
		text = ""
