extends Node2D

@onready var maxSpeed = 10000
@onready var acceleration = 500
@onready var Player = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction_helper = {
		"up": Vector2(0, -1),
		"down": Vector2(0, 1),
		"left": Vector2(-1, 0),
		"right": Vector2(1, 0)
	}
	var dir_vector = Vector2.ZERO
	
	# Iterate through direction helper and check inputs
	for key in direction_helper.keys():
		if Input.is_action_pressed( key):
			dir_vector += direction_helper[key]
	
	# Normalize direction to prevent diagonal speed increase
	if dir_vector != Vector2.ZERO:
		dir_vector = dir_vector.normalized()
	
	# Apply movement to your character
	Player.velocity = dir_vector * acceleration

