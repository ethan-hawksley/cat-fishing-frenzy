extends Line2D
@export var node: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	set_point_position(1, to_local(node.global_position))
	set_point_position(0, Vector2(0,5*sin(Time.get_ticks_msec()/250.0 - 31)))
