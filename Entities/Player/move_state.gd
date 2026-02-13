extends State




func physics_update(_delta: float) -> void:
	owner.velocity = owner.velocity.lerp(owner.direction.normalized() * owner.speed , owner.accel)
	
	owner.body_animation_tree["parameters/BodySpearAnimations/0/Sprint/blend_amount"] = lerpf(owner.body_animation_tree["parameters/BodySpearAnimations/0/Sprint/blend_amount"],1, 0.1)  
	owner.head_animation_tree["parameters/HeadAnimations/0/Sprint/blend_amount"] = lerpf(owner.head_animation_tree["parameters/HeadAnimations/0/Sprint/blend_amount"],1, 0.1) 
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") == Vector2.ZERO:
		finished.emit("Idle")
