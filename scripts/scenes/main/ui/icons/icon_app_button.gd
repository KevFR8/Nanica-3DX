extends Control

@onready var anim = $"AnimationPlayer"

func _ready():
	anim.play("idle")
	
func _physics_process(delta):
	if Input.is_action_just_pressed("right"):
		anim.play("inactive")




