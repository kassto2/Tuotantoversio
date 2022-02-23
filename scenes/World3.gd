extends Node2D

var active = false

func _ready():
	pass

func _on_lvl2_body_entered(body):
	if body.name == "Player":
		active = true

func _input(event):
	if event.is_action_pressed("use") and active:
		get_tree().change_scene("res://endscreen.tscn")

func _on_spikes_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()

