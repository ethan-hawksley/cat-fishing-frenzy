extends Node2D

enum directions {
	left,
	right,
}
var direction = directions.right

var images = [
	"res://assets/fish_1.png",
	"res://assets/fish_3.png",
	"res://assets/fish_4.png",
]

func _ready() -> void:
	var path = images.pick_random()
	
	var loaded_texture = load(path)
	
	$Sprite2D.texture = loaded_texture
	
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("touched")
	global.caught_fish += 1
	if global.max_fish <= global.caught_fish:
		global.mode = global.modes.ascending
	queue_free()

func _process(_delta: float) -> void:
	if global.mode != global.modes.descending:
		queue_free()
	
	if direction == directions.left:
		global_position.x += 2
	else:
		global_position.x -= 2
	
