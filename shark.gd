extends Node2D
var direction = directions.right
enum directions {
	left,
	right,
}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("shark!")
	if randf() < 0.5:
		direction = directions.left
		$Sprite2D.flip_h = true

func _on_area_2d_area_entered(area: Area2D) -> void:
	if not area.is_in_group("hook"):
		return
	print("Entered")

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
