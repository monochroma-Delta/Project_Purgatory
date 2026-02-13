extends State

func enter(previous_state_path: String, data := {}) -> void:
	owner.body_animation_tree["parameters/BodyAnimations/3/conditions/sprint"] = true
	owner.head_animation_tree["parameters/HeadAnimations/0/conditions/sprint"] = true
	owner.body_animation_player.speed_scale = 1.6
	owner.head_animation_player.speed_scale = 1.6


func exit() -> void:
	owner.body_animation_tree["parameters/BodyAnimations/3/conditions/sprint"] = false
	owner.head_animation_tree["parameters/HeadAnimations/0/conditions/sprint"] = false
	

func physics_update(_delta: float) -> void:
	owner.velocity = owner.velocity.lerp(owner.direction.normalized() * owner.speed , owner.accel)
	
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") == Vector2.ZERO:
		finished.emit("Idle")
