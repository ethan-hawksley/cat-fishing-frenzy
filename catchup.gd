extends Label

func _process(_delta) -> void:
	text="Catch More"+"\n"+"£"+str(ceil((global.inflationcatchmore*50)))+" Brought:"+str(int(global.catchup))

	if global.mode != global.modes.shop:
		text = ""
