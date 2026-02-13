extends State


func physics_update(_delta: float) -> void:
	owner.velocity = owner.velocity.lerp(Vector2.ZERO, owner.friction) 
	
	owner.body_animation_tree["parameters/BodySpearAnimations/0/Sprint/blend_amount"] = lerpf(owner.body_animation_tree["parameters/BodySpearAnimations/0/Sprint/blend_amount"],0, 0.15)  
	owner.head_animation_tree["parameters/HeadAnimations/0/Sprint/blend_amount"] = lerpf(owner.head_animation_tree["parameters/HeadAnimations/0/Sprint/blend_amount"],0, 0.15)  
	
	
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") != Vector2.ZERO:
		finished.emit("Move")
	
