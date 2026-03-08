extends Label

func _process(_delta) -> void:
	text="longer up"+"\n"+"£"+str(snapped((global.inflationlongerline*50),0.01))+" Bought:"+str(int(global.longerup))

	if global.mode != global.modes.shop:
		text = ""
