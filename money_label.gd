extends Label

func _process(_delta) -> void:
	text = "$" + str(global.money)
