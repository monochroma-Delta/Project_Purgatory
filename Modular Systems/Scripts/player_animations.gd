extends Node2D

@export var spear_texture: CompressedTexture2D
@export var longsword_texture: CompressedTexture2D
@export var greatsword_texture: CompressedTexture2D

@onready var left_sword: Sprite2D = $LeftSprites/Body/Arm/Gauntlet/Sword
@onready var left_spear: Sprite2D = $LeftSprites/Body/Arm/Gauntlet/Spear

func _ready() -> void:
	left_spear.texture = spear_texture
	left_sword.texture = longsword_texture
