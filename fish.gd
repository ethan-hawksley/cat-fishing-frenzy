extends Node2D

enum directions {
	left,
	right,
}
var direction = directions.right

var caught = false
var caught_by = null

var value = 0

var images = [
	"res://assets/fish_1.png",
	"res://assets/fish_2.png",
	"res://assets/fish_3.png",
	"res://assets/fish_4.png",
	"res://assets/fish_5.png",
	"res://assets/fish_6.png",
	"res://assets/fish_7.png",
	"res://assets/catfish.png",
]

func _ready() -> void:
	var path = images[0]
	value = 100
	if 100 < global.depth:
		if randf() < 0.5:
			path = images[1]
			value = 200
	if 200 < global.depth:
		if randf() < 0.5:
			path = images[2]
			value = 300
	if 300 < global.depth:
		if randf() < 0.5:
			path = images[3]
			value = 400
	if 400 < global.depth:
		if randf() < 0.5:
			path = images[4]
			value = 500
	if 500 < global.depth:
		if randf() < 0.5:
			path = images[5]
			value = 600
	if 600 < global.depth:
		if randf() < 0.5:
			path = images[6]
			value = 700
	if 700 < global.depth:
		if randf() < 0.5:
			path = images[7]
			value = 800



	var loaded_texture = load(path)
	
	$Sprite2D.texture = loaded_texture
	
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true


func _on_area_2d_area_entered(area: Area2D) -> void:
	if not area.is_in_group("hook"):
		return
	global.caught_fish += 1
	global.value_of_reeled_fish += value
	global.latestfishvalue = value
	if global.max_fish <= global.caught_fish:
		global.mode = global.modes.ascending
	caught = true
	caught_by = area
	rotation_degrees = randf_range(0, 360)

func _process(delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	
	if global.mode == global.modes.descending or global.mode == global.modes.ascending:
		if direction == directions.left:
			global_position.x += 120 * delta
		else:
			global_position.x -= 120 * delta

	else:
		value = 0

	if caught:
		global_position = caught_by.global_position
		global_position.y += 40
	
