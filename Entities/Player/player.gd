extends CharacterBody2D
class_name Player

var speed: float = 500.0
var accel: float = 0.25
var direction: Vector2

func _physics_process(delta: float) -> void:
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") != Vector2.ZERO:
		direction = Input.get_vector("LEFT","RIGHT","UP","DOWN").normalized()
	move_and_slide()
