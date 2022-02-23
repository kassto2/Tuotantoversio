extends Control

var game_music = load("res://sfx/MUSIC_DROP.ogg")
var menu_music = load("res://sfx/MUSIC_START.ogg")

func menu_music():
	if $MenuMusic.playing:
		return
	$MenuMusic.stream = menu_music
	$MenuMusic.play()
	$GameMusic.stop()

func game_music():
	if $GameMusic.playing:
		return
	$GameMusic.stream = game_music
	$GameMusic.play()
	$MenuMusic.stop()
