extends Node2D

var caught = false
var caught_by = null

func _ready() -> void:
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	if not area.is_in_group("hook"):
		return
	
	global.mode = global.modes.ascending
	caught = true
	caught_by = area
	rotation_degrees = randf_range(0, 360)

func _process(_delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	
	if caught:
		global_position = caught_by.global_position
		global_position.y += 40
	
