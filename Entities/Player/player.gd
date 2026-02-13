extends CharacterBody2D
class_name Player

@onready var direction_raycast: RayCast2D = $DirectionRaycast
@onready var body_animation_tree: AnimationTree = $PlayerAnimation/BodyAnimationTree
@onready var head_animation_tree: AnimationTree = $PlayerAnimation/HeadAnimationTree
@onready var head_animation_player: AnimationPlayer = $PlayerAnimation/HeadAnimationPlayer
@onready var face_animation_player: AnimationPlayer = $PlayerAnimation/FaceAnimationPlayer
@onready var body_animation_player: AnimationPlayer = $PlayerAnimation/BodyAnimationPlayer

@export_category("Weapon Type")
@export var spear: bool = false
@export var longsword: bool = false
@export var greatsword: bool = false

var speed: float = 720.0
var accel: float = 0.25
var friction: float = 0.12
var direction: Vector2

func _ready() -> void:
	body_animation_tree.active = true
	head_animation_tree.active = true

func _physics_process(delta: float) -> void:
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") != Vector2.ZERO:
		direction = Input.get_vector("LEFT","RIGHT","UP","DOWN").normalized()
		direction_raycast.target_position = direction * 50
	move_and_slide()
	
	if spear:
		body_animation_tree["parameters/conditions/spear"] = true
		body_animation_tree["parameters/conditions/greatsword"] = false
		body_animation_tree["parameters/conditions/longsword"] = false
		body_animation_tree["parameters/BodySpearAnimations/blend_position"] = direction
	elif longsword:
		body_animation_tree["parameters/conditions/longsword"] = true
		body_animation_tree["parameters/conditions/spear"] = false
		body_animation_tree["parameters/conditions/greatsword"] = false
		body_animation_tree["parameters/BodyLongswordAnimations/blend_position"] = direction
	elif greatsword:
		body_animation_tree["parameters/conditions/greatsword"] = true
		body_animation_tree["parameters/conditions/longsword"] = false
		body_animation_tree["parameters/conditions/spear"] = false
		body_animation_tree["parameters/BodyGreatswordAnimations/blend_position"] = direction
	head_animation_tree["parameters/HeadAnimations/blend_position"] = direction
	
	
	
	
