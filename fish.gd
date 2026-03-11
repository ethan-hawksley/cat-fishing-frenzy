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
var fish = "fish_1"

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
	fish = "fish_1"
	value = 50
	if 200 < global.depth:
		if randf() < 0.5:
			path = images[1]
			value = 100
			fish = "fish_2"
	if 400 < global.depth:
		if randf() < 0.5:
			path = images[2]
			value = 150
			fish = "fish_3"
	if 600 < global.depth:
		if randf() < 0.5:
			path = images[3]
			value = 200
			fish = "fish_4"
	if 800 < global.depth:
		if randf() < 0.5:
			path = images[4]
			value = 250
			fish = "fish_5"
	if 1000 < global.depth:
		if randf() < 0.5:
			path = images[5]
			value = 300
			fish = "fish_6"
	if 1200 < global.depth:
		if randf() < 0.5:
			path = images[6]
			value = 350
			fish = "fish_7"
	if 1400 < global.depth:
		if randf() < 0.5:
			path = images[7]
			value = 400
			fish = "fish_8"
	if 1600 < global.depth:
		if randf() < 0.5:
			path = images[8]
			value = 450
			fish = "fish_9"
	if 1800 < global.depth:
		if randf() < 0.5:
			path = images[9]
			value = 500
			fish = "fish_10"
	if 2000 < global.depth:
		if randf() < 0.5:
			path = images[10]
			value = 550
			fish = "fish_11"
	if 2200 < global.depth:
		if randf() < 0.5:
			path = images[11]
			value = 600
			fish = "fish_12"
	if 2400 < global.depth:
		if randf() < 0.5:
			path = images[12]
			value = 650
			fish = "fish_13"
	if 2600 < global.depth:
		if randf() < 0.5:
			path = images[13]
			value = 700
			fish = "fish_14"
	if 2800 < global.depth:
		if randf() < 0.5:
			path = images[14]
			value = 750
			fish = "fish_15"
	if 3000 < global.depth:
		if randf() < 0.5:
			path = images[15]
			value = 800
			fish = "fish_16"
	if 3200 < global.depth:
		if randf() < 0.25:
			path = images[12]
			value = 0
			jellyfish = true

	var loaded_texture = load(path)
	
	$Sprite2D.texture = loaded_texture
	
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true

func add_collection(fish):
	if fish == "fish_1":
		global.collection[0] = true
	if fish == "fish_2":
		global.collection[1] = true
	if fish == "fish_3":
		global.collection[2] = true
	if fish == "fish_4":
		global.collection[3] = true
	if fish == "fish_5":
		global.collection[4] = true
	if fish == "fish_6":
		global.collection[5] = true
	if fish == "fish_7":
		global.collection[6] = true
	if fish == "fish_8":
		global.collection[7] = true
	if fish == "fish_9":
		global.collection[8] = true
	if fish == "fish_10":
		global.collection[9] = true
	if fish == "fish_11":
		global.collection[10] = true
	if fish == "fish_12":
		global.collection[11] = true
	if fish == "fish_13":
		global.collection[12] = true
	if fish == "fish_14":
		global.collection[13] = true
	if fish == "fish_15":
		global.collection[14] = true
	if fish == "fish_16":
		global.collection[15] = true

func _on_area_2d_area_entered(area: Area2D) -> void:
	if not area.is_in_group("hook"):
		return
	if jellyfish == false:
		add_collection(fish)
		global.caught_fish += 1
		global.value_of_reeled_fish += value
		global.latestfishvalue = value
		if global.max_fish <= global.caught_fish:
			global.mode = global.modes.ascending
		caught = true
		caught_by = area
		rotation_degrees = randf_range(0, 360)
	if jellyfish == true:
		value = value / 2 
		$shock.visible = true
		global.shock = 1
		

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
	
