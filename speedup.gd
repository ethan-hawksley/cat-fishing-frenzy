extends Label

func _process(_delta) -> void:
	text="Faster Rod"+"\n"+"£"+str(snapped((global.inflationfasterrod*100),0.01))+" Bought:"+str(int(global.speedup))

	if global.mode != global.modes.shop:
		text = ""
