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

var images =[
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
	"res://assets/fish_16.png",
	"res://assets/fish_17.png",
	"res://assets/fish_18.png",
	"res://assets/fish_19.png",
	"res://assets/fish_20.png",
	"res://assets/fish_21.png",
	"res://assets/fish_22.png",
	"res://assets/fish_23.png",
	"res://assets/fish_24.png",
	"res://assets/fish_25.png",
	"res://assets/fish_26.png",
	"res://assets/fish_27.png",
	"res://assets/fish_28.png",
	"res://assets/fish_29.png",
	"res://assets/fish_30.png",
	"res://assets/fish_31.png",
	"res://assets/catfish.png",
]

func _ready() -> void:
	var path = images[0]
	fish = "fish_1"
	value = 100 * global.easymode
	
	if 100 < global.depth:
		if randf() < 0.5:
			path = images[1]
			value = 150*global.easymode
			fish = "fish_2"
	if 200 < global.depth:
		if randf() < 0.5:
			path = images[2]
			value = 200*global.easymode
			fish = "fish_3"
	if 300 < global.depth:
		if randf() < 0.5:
			path = images[3]
			value = 250*global.easymode
			fish = "fish_4"
	if 400 < global.depth:
		if randf() < 0.5:
			path = images[4]
			value = 300*global.easymode
			fish = "fish_5"
	if 500 < global.depth:
		if randf() < 0.5:
			path = images[5]
			value = 350*global.easymode
			fish = "fish_6"
	if 600 < global.depth:
		if randf() < 0.5:
			path = images[6]
			value = 400*global.easymode
			fish = "fish_7"
	if 700 < global.depth:
		if randf() < 0.5:
			path = images[7]
			value = 450*global.easymode
			fish = "fish_8"
	if 800 < global.depth:
		if randf() < 0.5:
			path = images[8]
			value = 500*global.easymode
			fish = "fish_9"
	if 900 < global.depth:
		if randf() < 0.5:
			path = images[9]
			value = 550*global.easymode
			fish = "fish_10"
	if 1000 < global.depth:
		if randf() < 0.5:
			path = images[10]
			value = 600*global.easymode
			fish = "fish_11"
	if 1100 < global.depth:
		if randf() < 0.5:
			path = images[11]
			value = 650*global.easymode
			fish = "fish_12"
	if 1200 < global.depth:
		if randf() < 0.5:
			path = images[12]
			value = 700*global.easymode
			fish = "fish_13"
	if 1300 < global.depth:
		if randf() < 0.5:
			path = images[13]
			value = 750*global.easymode
			fish = "fish_14"
	if 1400 < global.depth:
		if randf() < 0.5:
			path = images[14]
			value = 800*global.easymode
			fish = "fish_15"
	if 1500 < global.depth:
		if randf() < 0.5:
			path = images[15]
			value = 850 * global.easymode
			fish = "fish_16"
	if 1600 < global.depth:
		if randf() < 0.5:
			path = images[16]
			value = 900 * global.easymode
			fish = "fish_17"
	if 1700 < global.depth:
		if randf() < 0.5:
			path = images[17]
			value = 950 * global.easymode
			fish = "fish_18"
	if 1800 < global.depth:
		if randf() < 0.5:
			path = images[18]
			value = 1000 * global.easymode
			fish = "fish_19"
	if 1900 < global.depth:
		if randf() < 0.5:
			path = images[19]
			value = 1050 * global.easymode
			fish = "fish_20"
	if 2000 < global.depth:
		if randf() < 0.5:
			path = images[20]
			value = 1100 * global.easymode
			fish = "fish_21"
	if 2100 < global.depth:
		if randf() < 0.5:
			path = images[21]
			value = 1150 * global.easymode
			fish = "fish_22"
	if 2200 < global.depth:
		if randf() < 0.5:
			path = images[22]
			value = 1200 * global.easymode
			fish = "fish_23"
	if 2300 < global.depth:
		if randf() < 0.5:
			path = images[23]
			value = 1250 * global.easymode
			fish = "fish_24"
	if 2400 < global.depth:
		if randf() < 0.5:
			path = images[24]
			value = 1300 * global.easymode
			fish = "fish_25"
	if 2500 < global.depth:
		if randf() < 0.5:
			path = images[25]
			value = 1350 * global.easymode
			fish = "fish_26"
	if 2600 < global.depth:
		if randf() < 0.5:
			path = images[26]
			value = 1400 * global.easymode
			fish = "fish_27"
	if 2700 < global.depth:
		if randf() < 0.5:
			path = images[27]
			value = 1450 * global.easymode
			fish = "fish_28"
	if 2800 < global.depth:
		if randf() < 0.5:
			path = images[28]
			value = 1500 * global.easymode
			fish = "fish_29"
	if 2900 < global.depth:
		if randf() < 0.5:
			path = images[29]
			value = 1550 * global.easymode
			fish = "fish_30"
	if 3000 < global.depth:
		if randf() < 0.5:
			path = images[30]
			value = 1600 * global.easymode
			fish = "fish_31"
	if 3100 < global.depth:
		if randf() < 0.5:
			path = images[31]
			value = 1650 * global.easymode
			fish = "fish_32"
	if 3500 < global.depth:
		if randf() < 0.5:
			jellyfish = true
	if randf() < 0.005:
		jellyfish = true
	if jellyfish == true:
		path = "res://assets/jellyfish.png"
		

	var loaded_texture = load(path)
	$Sprite2D.texture = loaded_texture
	
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true

func add_collection(fish_type: String) -> void:
	# read index from number after the underscore
	var index = int(fish_type.split("_")[1]) - 1
	if index >= 0 and index < global.collection.size():
		global.collection[index] = true

func _on_area_2d_area_entered(area: Area2D) -> void:
	if not area.is_in_group("hook"):
		return
		 
	if jellyfish == false:
		if not caught:
			AudioManager.play_sfx("catch")
			
		add_collection(fish)
		global.caught_fish += 1
		global.value_of_reeled_fish += value
		global.latestfishvalue = value
		
		if global.max_fish <= global.caught_fish:
			global.mode = global.modes.ascending
		
		caught = true
		caught_by = area
		rotation_degrees = randf_range(0, 360)
		
	elif jellyfish == true:
		AudioManager.play_sfx("zap")
		global.caught_fish += 2.0 
		global.value_of_reeled_fish /= 2
		global.value_of_reeled_fish = snapped(global.value_of_reeled_fish, 0.01)
		$shock.visible = true
		global.shock = 1
		
		$Area2D.set_deferred("monitorable", false)
		$Area2D.set_deferred("monitoring", false)
		
		await get_tree().create_timer(1.0).timeout
		if is_instance_valid(self):
			$shock.visible = false

func _process(delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	
	if global.mode == global.modes.descending or global.mode == global.modes.ascending:
		var move_speed = 35.0 if jellyfish else 120.0
		
		if direction == directions.left:
			global_position.x += move_speed * delta
		else:
			global_position.x -= move_speed * delta

	else:
		value = 0

	if caught:
		global_position = caught_by.global_position
		global_position.y += 40
