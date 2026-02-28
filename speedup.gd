extends Label

func _process(_delta) -> void:
	text="Faster Rod"+"\n"+"£"+str(ceil((global.inflationfasterrod*100)))+" Brought:"+str(int(global.speedup))

	if global.mode != global.modes.shop:
		text = ""
