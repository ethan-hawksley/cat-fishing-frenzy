extends Node2D
var direction = directions.right
enum directions {
	left,
	right,
}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.

func _on_area_2d_area_entered(area: Area2D) -> void:
	if not area.is_in_group("hook"):
		return
	if global.caught_fish > 0:
		global.caught_fish += -1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global.mode == global.modes.shop:
		queue_free()
	if global.mode == global.modes.descending or global.mode == global.modes.ascending:
		if direction == directions.left:
			global_position.x += 2
		else:
			global_position.x -= 2
	pass
