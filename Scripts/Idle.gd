extends Node

@onready var player = $"../.."
@onready var sm = $".."
var drag = .2

func enter():
	print("entering idle")
func exit():
	print("exiting idle")

func update():
	player.velocity *= (1- drag)
	var direction = player.input.getDirection()
	if direction.length() > 0:
		sm.changeState("Walk")
	pass
	
