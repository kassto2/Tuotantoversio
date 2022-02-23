extends Control

#Ready = metodi joka kutsutaan kun ohjelma alkaa.
func _ready():
	pass

#Jos play nappia on painettu, pääsee pelaaja pelaamaan uudestaan.
func _on_play_button_up():
	get_tree().change_scene("res://World.tscn")

#Jos exit nappia on painettu, peli sulkeutuu.
func _on_exit_button_up():
	get_tree().quit()
