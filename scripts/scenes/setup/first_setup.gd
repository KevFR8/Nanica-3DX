extends Control

@onready var timer = $Timer

func _ready():
	timer.start()

func time_left():
	var time_left = timer.time_left
	var seconds = int(time_left) % 60
	return (seconds)
	
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scene/ui/main/main.tscn")
