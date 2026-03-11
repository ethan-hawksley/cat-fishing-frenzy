extends Label

func _process(_delta) -> void:
	text="Harpoon\n£"+str(snapped((global.inflationharpoon*75),0.01))+"\nBought:"+str(int(global.harpoonup))

	if global.mode != global.modes.shop:
		text = ""
