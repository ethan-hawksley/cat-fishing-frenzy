extends Node2D

enum directions {
	left,
	right,
}
var direction = directions.right

var caught = false
var caught_by = null

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
	if not area.is_in_group("hook"):
		return
	global.caught_fish += 1
	if global.max_fish <= global.caught_fish:
		global.mode = global.modes.ascending
	caught = true
	caught_by = area
	rotation_degrees = randf_range(0, 360)

func _process(_delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	
	if global.mode == global.modes.descending or global.mode == global.modes.ascending:
		if direction == directions.left:
			global_position.x += 2
		else:
			global_position.x -= 2
	
	if caught:
		global_position = caught_by.global_position
		global_position.y += 40
	
