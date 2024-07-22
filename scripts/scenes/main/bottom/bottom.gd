extends Control

@onready var touch_b1 = $Bottom/border/TouchScreenButton/B1
@onready var touch_b2 = $Bottom/border/TouchScreenButton/B1/B2
@onready var touch_b3 = $Bottom/border/TouchScreenButton/B1/B3

var length = 100
var startPos : Vector2
var curPos : Vector2
var swiping = false

var threshold = 10
 
func _process(delta):
	if Input.is_action_just_pressed("press"):
		if !swiping:
			swiping = true
			startPos = get_global_mouse_position()
			print("Start position ", startPos)
				
	if Input.is_action_pressed("press"):
		curPos = get_global_mouse_position()
		if startPos.distance_to(curPos) >= length:
			if abs(startPos.y-curPos.y) <= threshold:
				print("Horizontal")
				swiping = false
			elif abs(startPos.x-curPos.x) <= threshold:
				print("Vertical")
				swiping = false
	else:
		swiping	= false	
		
	
		


