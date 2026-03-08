extends Label

func _process(_delta) -> void:
	text="less rocks"+"\n"+"£"+str(snapped((global.inflationrock*50),0.01))+" Bought:"+str(int(global.lessroccks))

	if global.mode != global.modes.shop:
		text = ""
