extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	text="Less Rocks\n£"+str(snapped((global.inflationrock*75),0.01))+"\nBought:"+str(int(global.lessroccks))
	if global.mode != global.modes.shop:
		text = ""
