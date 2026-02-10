extends Node



@onready var silver_spear: Sprite2D = $RightSprites/Body/Arm/Gauntlet/SilverSpear
@onready var silver_sword: Sprite2D = $RightSprites/Body/Arm/Gauntlet/SilverSword
@onready var silver_great_sword: Sprite2D = $RightSprites/Body/Arm/Gauntlet/SilverGreatSword
@onready var gauntlet: Sprite2D = $RightSprites/Body/Arm/Gauntlet
@onready var gauntlet_1: Sprite2D = $RightSprites/Body/Arm1/Gauntlet1


func weapon_reparent(path: NodePath) -> void:
	
	silver_spear.reparent(get_node(path))
	
