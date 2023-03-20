extends KinematicBody2D

export(Vector2) var speed = Vector2(150, 150)

var rng := RandomNumberGenerator.new()
var velocity:Vector2
var guide:Vector2

func _ready() -> void:
	guide = random_point()
	look_at(guide)
	velocity = speed * position.direction_to(guide)


func _process(delta:float) -> void:
	move_and_slide(velocity)
	look_at(guide)


func random_point() -> Vector2:
	rng.randomize()
	return rng.randf() * get_tree().root.size
