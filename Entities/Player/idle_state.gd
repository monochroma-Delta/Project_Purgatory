extends State

func enter(previous_state_path: String, data := {}) -> void:
	owner.body_animation_tree["parameters/BodyAnimations/3/conditions/idle"] = true
	owner.head_animation_tree["parameters/HeadAnimations/0/conditions/idle"] = true
	owner.body_animation_player.speed_scale = 1
	owner.head_animation_player.speed_scale = 1

func exit() -> void:
	owner.body_animation_tree["parameters/BodyAnimations/3/conditions/idle"] = false
	owner.head_animation_tree["parameters/HeadAnimations/0/conditions/idle"] = false

func physics_update(_delta: float) -> void:
	owner.velocity = owner.velocity.lerp(Vector2.ZERO, owner.accel) 
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") != Vector2.ZERO:
		finished.emit("Move")
	
