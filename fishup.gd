extends Label

func _process(_delta) -> void:
	text="More Fish\n£"+str(snapped((global.inflationmorefish*50),0.01))+"\nBought:"+str(int(global.fishup))

	if global.mode != global.modes.shop:
		text = ""
