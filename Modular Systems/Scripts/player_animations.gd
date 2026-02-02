extends Node2D

@export var spear_texture: CompressedTexture2D
@export var longsword_texture: CompressedTexture2D
@export var greatsword_texture: CompressedTexture2D

@onready var left_sword: Sprite2D = $LeftSprites/Body/Arm/Gauntlet/Weapon/Sword
@onready var left_spear: Sprite2D = $LeftSprites/Body/Arm/Gauntlet/Weapon/Spear
@onready var up_sword: Sprite2D = $UpSprites/Body/Gauntlet2/Weapon/Sword
@onready var up_spear: Sprite2D =$UpSprites/Body/Gauntlet2/Weapon/Spear
@onready var right_sword: Sprite2D =$RightSprites/Body/Arm1/Gauntlet1/Weapon/Sword
@onready var right_spear: Sprite2D = $RightSprites/Body/Arm1/Gauntlet1/Weapon/Spear
@onready var down_sword: Sprite2D = $DownSprites/Body/Arm/Gauntlet/Weapon/Sword
@onready var down_spear: Sprite2D = $DownSprites/Body/Arm/Gauntlet/Weapon/Spear

func _ready() -> void:
	left_spear.texture = spear_texture
	left_sword.texture = longsword_texture
	up_spear.texture = spear_texture
	up_sword.texture = longsword_texture
	right_spear.texture = spear_texture
	right_sword.texture = longsword_texture
	down_spear.texture = spear_texture
	down_sword.texture = longsword_texture
