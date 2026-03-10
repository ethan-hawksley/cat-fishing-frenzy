extends Label

func _process(_delta) -> void:
	text="Longer Line\n£"+str(snapped((global.inflationlongerline*115),0.01))+"\nBought:"+str(int(global.longerup))

	if global.mode != global.modes.shop:
		text = ""
