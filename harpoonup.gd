extends Label

func _process(_delta) -> void:
	text="Harpoon"+"\n"+"£"+str(ceil((global.inflationharpoon*75)))+" Brought:"+str(int(global.harpoonup))

	if global.mode != global.modes.shop:
		text = ""
