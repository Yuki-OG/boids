extends KinematicBody2D

onready var front:Position2D = $front

var rng := RandomNumberGenerator.new()
var speed:Vector2 = Vector2(200, 200)

func _ready() -> void:
	rng.randomize()
	set_rotation(rng.randf_range(0, 2))
	
	var direction = Vector2.direction_to(front.position)
	print(direction, front.position)
	speed *= direction

func _process(delta:float) -> void:
	move_and_slide(speed)
