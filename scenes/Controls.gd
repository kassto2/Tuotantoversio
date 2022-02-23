extends Control

#Ready = metodi joka kutsutaan kun ohjelma alkaa.
func _ready():
	pass 

#Jos back nappia on painettu, scene vaihtuu takaisin aloitustaustaan.
func _on_back_button_up():
	get_tree().change_scene("res://titlescreen.tscn")
