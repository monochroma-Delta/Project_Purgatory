extends CharacterBody2D
class_name Player

@onready var direction_raycast: RayCast2D = $DirectionRaycast
@onready var body_animation_tree: AnimationTree = $PlayerAnimation/BodyAnimationTree
@onready var head_animation_tree: AnimationTree = $PlayerAnimation/HeadAnimationTree

var speed: float = 500.0
var accel: float = 0.25
var direction: Vector2

func _physics_process(delta: float) -> void:
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") != Vector2.ZERO:
		direction = Input.get_vector("LEFT","RIGHT","UP","DOWN").normalized()
		direction_raycast.target_position = direction * 50
	move_and_slide()
	body_animation_tree["parameters/BodyAnimations/blend_position"] = direction
	
