extends Label

func _process(_delta) -> void:
	text="Catch More\n£"+str(snapped((global.inflationcatchmore*50),0.01))+"\nBought:"+str(int(global.catchup))

	if global.mode != global.modes.shop:
		text = ""
