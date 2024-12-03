extends Node
@onready var player = $"../.."
@onready var SM = $".."
var acceleration = 30
var MaxSpeed = 500

func enter():
	print("entering")
func exit():
	print("exiting")

func update():
	var direction = player.input.getDirection()
	if direction.length() > 0:
		var newVelocity = player.velocity + (acceleration * direction)
		player.velocity = newVelocity.limit_length(MaxSpeed)
		pass
	else: 
		self.SM.changeState("Idle")
	
