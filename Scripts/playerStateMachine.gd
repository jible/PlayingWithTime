extends Node
@onready var player = $".."
var states = {}
var defaultState = "Idle"
var currentState = null

func _ready():
	setUpStates()
	changeState(defaultState)
	
func _physics_process(delta):
	currentState.update()

func changeState( key):
	checkForState(key)
	var newState = states[key]
	currentState && currentState.exit()
	currentState = newState
	currentState.enter()
	
func setUpStates():
	var children = get_children()
	for state in children:
		var name = state.name
		if states.has(name):
			push_error("Adding multiple copies of one state")
		states[name] = state
		

func checkForState(key):
	if !states.has(key):
		push_error("Cannot enter non-existant state")

