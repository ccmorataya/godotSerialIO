extends Node2D
onready var x = get_node("spbx_x")
onready var y = get_node("spbx_y")
var isXPressed
var isYPressed

func _ready():
	set_process(true)
	set_process_input(true)

func _process(delta):
	isXPressed = false
	isYPressed = false
	
	if !isYPressed:
		y.set_value(0)
	if !isXPressed:
		x.set_value(0)
	print(str("valor de x: ", isXPressed))
	print(str("valor de y: ", isYPressed))

func _input(event):
	if event.is_action_pressed("ui_up"):
		y.set_val(10)
		isYPressed = true
	if event.is_action_pressed("ui_down"):
		y.set_val(-10)
		isYPressed = true
	if event.is_action_pressed("ui_right"):
		x.set_val(10)
		isXPressed = true
	if event.is_action_pressed("ui_left"):
		x.set_val(-10)
		isXPressed = true