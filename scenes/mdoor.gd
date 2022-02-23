extends Area2D

onready var destination

func _ready():
	destination = get_node("mdoordest").get_global_position()

func _physics_process(delta):
	if not Input.is_action_just_pressed("use"):
		return
	
	for body in get_overlapping_bodies():
		if body is Player:
			body.set_position(destination)
