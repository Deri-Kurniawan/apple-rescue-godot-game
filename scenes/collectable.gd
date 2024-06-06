extends Area2D

@onready var game_manager = %GameManager
@onready var animated_sprite_2d = $AnimatedSprite2D


func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		animated_sprite_2d.animation = "collected"
		game_manager.increment_point()
		
