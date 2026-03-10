extends Node2D

enum directions {
	left,
	right,
}
var direction = directions.right
var jellyfish = false
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
	"res://assets/fish_8.png",
	"res://assets/fish_9.png",
	"res://assets/fish_10.png",
	"res://assets/fish_11.png",
	"res://assets/fish_12.png",
	"res://assets/fish_13.png",
	"res://assets/fish_14.png",
	"res://assets/fish_15.png",
	"res://assets/catfish.png",
]

func _ready() -> void:
	var path = images[0]
	value = 50
	if 250 < global.depth:
		if randf() < 0.5:
			path = images[1]
			value = 100
	if 500 < global.depth:
		if randf() < 0.5:
			path = images[2]
			value = 150
	if 750 < global.depth:
		if randf() < 0.5:
			path = images[3]
			value = 200
	if 1000 < global.depth:
		if randf() < 0.5:
			path = images[4]
			value = 250
	if 1250 < global.depth:
		if randf() < 0.5:
			path = images[5]
			value = 300
	if 1500 < global.depth:
		if randf() < 0.5:
			path = images[6]
			value = 350
	if 1750 < global.depth:
		if randf() < 0.5:
			path = images[7]
			value = 400
	if 2000 < global.depth:
		if randf() < 0.5:
			path = images[8]
			value = 450
	if 2250 < global.depth:
		if randf() < 0.5:
			path = images[9]
			value = 500
	if 2500 < global.depth:
		if randf() < 0.5:
			path = images[10]
			value = 550
	if 2750 < global.depth:
		if randf() < 0.5:
			path = images[11]
		value = 600
	if 3000 < global.depth and global.depth > 3250:
		if randf() < 0.5:
			path = images[12]
			value = 650
			jellyfish = true
	if 3250 < global.depth:
		if randf() < 0.5:
			path = images[13]
			value = 700
			jellyfish = false
	if 3500 < global.depth:
		if randf() < 0.5:
			path = images[14]
			value = 750
			jellyfish = false
	if 3750 < global.depth:
		if randf() < 0.5:
			path = images[15]
			value = 800
			jellyfish = false



	var loaded_texture = load(path)
	
	$Sprite2D.texture = loaded_texture
	
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true


func _on_area_2d_area_entered(area: Area2D) -> void:
	if not area.is_in_group("hook"):
		return
	if jellyfish == false:
		print("not jellyfish")
		global.caught_fish += 1
		global.value_of_reeled_fish += value
		global.latestfishvalue = value
		if global.max_fish <= global.caught_fish:
			global.mode = global.modes.ascending
		caught = true
		caught_by = area
		rotation_degrees = randf_range(0, 360)
	if jellyfish == true:
		print("jellyfish")
		value = value / 2 
		$shock.visible = true
		
		

func _process(delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	
	if global.mode == global.modes.descending or global.mode == global.modes.ascending:
		if direction == directions.left:
			global_position.x += 120 * delta
			if jellyfish == true:
				global_position.x += 12 * delta
		else:
			global_position.x -= 120 * delta
			if jellyfish == true:
				global_position.x -= 12 * delta

	else:
		value = 0

	if caught:
		global_position = caught_by.global_position
		global_position.y += 40
	
