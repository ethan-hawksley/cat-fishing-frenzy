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
