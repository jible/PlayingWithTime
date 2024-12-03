extends Node2D
@onready var Player = $".."


func getDirection():
	var direction_helper = {
		"up": Vector2(0, -1),
		"down": Vector2(0, 1),
		"left": Vector2(-1, 0),
		"right": Vector2(1, 0)
	}
	var inputDirection = Vector2.ZERO
	
	# Iterate through direction helper and check inputs
	for key in direction_helper.keys():
		if Input.is_action_pressed( key):
			inputDirection += direction_helper[key]
	
	# Normalize direction to prevent diagonal speed increase
	if inputDirection != Vector2.ZERO:
		inputDirection = inputDirection.normalized()
	return inputDirection
