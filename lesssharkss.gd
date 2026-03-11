extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text="less sharks\n£"+str(snapped((global.inflationshark*500),0.01))+"\nBought:"+str(int(global.lesssharkss))
	if global.mode != global.modes.shop:
		text = ""
	
