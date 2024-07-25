extends Control

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://scene/setup/inital_setup_2.tscn")




func _on_texture_button_pressed():
	print("hello world")
