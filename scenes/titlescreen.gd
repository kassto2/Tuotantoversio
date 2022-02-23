extends Control

#Ready = metodi joka kutsutaan kun ohjelma alkaa.
func _ready():
	MusicController.menu_music()

#Jos play nappia on painettu, scene vaihtuu ja peli alkaa.
func _on_play_button_up():
	get_tree().change_scene("res://World.tscn")
	MusicController.game_music()

#Jos exit nappia on painettu, peli sulkeutuu.
func _on_exit_button_up():
	get_tree().quit()

#Jos controls nappia on painettu, scene vaihtuu kontrolleihin.
func _on_controls_button_up():
	get_tree().change_scene("res://Controls.tscn")
