extends Label

func _process(_delta) -> void:
	text="Longer Line"+"\n"+"£"+str(ceil((global.inflationlongerline*115)))+" Bought:"+str(int(global.longerup))

	if global.mode != global.modes.shop:
		text = ""
