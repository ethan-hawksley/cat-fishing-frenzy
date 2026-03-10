extends Label

func _process(_delta) -> void:
	text="Longer Line"+"\n"+"£"+str(snapped((global.inflationlongerline*115),0.01))+" Bought:"+str(int(global.longerup))

	if global.mode != global.modes.shop:
		text = ""
