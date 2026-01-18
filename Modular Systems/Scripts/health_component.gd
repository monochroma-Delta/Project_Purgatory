extends Node
class_name HealthComponent

@export var max_health: float
@export var current_health: float

func _ready() -> void:
	current_health = max_health


func get_damage(damage_amount: float) -> void:
	current_health = current_health - damage_amount
