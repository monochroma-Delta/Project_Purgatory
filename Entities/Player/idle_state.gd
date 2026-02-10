extends State

func physics_update(_delta: float) -> void:
	owner.velocity = owner.velocity.lerp(Vector2.ZERO, owner.accel) 
	if Input.get_vector("LEFT","RIGHT","UP","DOWN") != Vector2.ZERO:
		finished.emit("Move")
	
