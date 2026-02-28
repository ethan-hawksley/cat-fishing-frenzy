extends Node2D
var direction = directions.right
enum directions {
	left,
	right,
}
var area = Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("shark!")
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true
		$target.flip_h = true

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("sharkattack"):
		$target.visible = true 
		await get_tree().create_timer(global.harptime).timeout
		
		return
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	if global.mode == global.modes.descending or global.mode == global.modes.ascending:
		if direction == directions.left:
			global_position.x += 1
		else:
			global_position.x -= 1
		if global.depth > global_position.y :
				global_position.y += 1
		if global.depth < global_position.y :
				global_position.y += -1
	pass
