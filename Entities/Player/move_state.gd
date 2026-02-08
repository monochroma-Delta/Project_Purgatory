extends State

func physics_update(_delta: float) -> void:
	owner.velocity = owner.velocity.lerp(owner.direction.normalized() * owner.speed , owner.accel)
