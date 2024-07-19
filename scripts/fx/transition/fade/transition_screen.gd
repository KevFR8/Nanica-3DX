extends CanvasLayer

func _ready():
	transition()

func transition():
	$AnimationPlayer.play("fade_in")
