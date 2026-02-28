extends Node2D

var images = [
	"res://assets/fish_1.png",
	"res://assets/fish_3.png",
	"res://assets/fish_4.png",
]

func _ready() -> void:
	var path = images.pick_random()
	
	var loaded_texture = load(path)
	
	$Sprite2D.texture = loaded_texture


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("touched")
	global.caught_fish += 1
	if global.max_fish <= global.caught_fish:
		global.mode = global.modes.ascending
	queue_free()
