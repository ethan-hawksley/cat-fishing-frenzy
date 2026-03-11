extends Node2D
var direction = directions.right
enum directions {
	left,
	right,
}
var harpoon_scene = preload("res://harpoon.tscn")
var harpoon_spawned = false
var harpoon: Node2D = null

func _ready() -> void:
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true
		$target.position.x += 35

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("hook"):
		global.value_of_reeled_fish *= 0.75 
		global.value_of_reeled_fish = snapped(global.value_of_reeled_fish, 0.01)
	if area.is_in_group("sharkattack") and not harpoon_spawned:
		harpoon_spawned = true
		await get_tree().create_timer(global.harptime).timeout

		if not is_inside_tree():
			return

		harpoon = harpoon_scene.instantiate()
		harpoon.global_position = global_position
		harpoon.global_position.y = -500
		harpoon.target = self
		get_parent().add_child(harpoon)

func _process(delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	if global.mode == global.modes.descending or global.mode == global.modes.ascending:
		if direction == directions.left:
			global_position.x += 60 * delta
		else:
			global_position.x -= 60 * delta
		if global.depth > global_position.y:
			global_position.y += 60 * delta
		if global.depth < global_position.y:
			global_position.y -= 60 * delta
		if harpoon != null and is_instance_valid(harpoon):
			if harpoon.global_position.x < global_position.x + 100 and harpoon.global_position.x != 0:
				$target.visible = true

			
