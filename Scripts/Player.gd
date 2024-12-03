extends CharacterBody2D

@onready var input = $Input
@onready var sm = $SM
@onready var sprite = $AnimatedSprite2D



func _physics_process(delta):
	move_and_slide()

