extends Control

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
		
	
		


