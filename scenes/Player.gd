extends KinematicBody2D

#Pelaajalle annettu nimi jota voidaan käyttää koodissa.
class_name Player

#X ja Y vektorit
var motion = Vector2()

#painovoima
var gravity = 1400

#pelaajan hyppyvoima
var height = -350

#Ready = metodi joka kutsutaan kun ohjelma alkaa.
func _ready():
	pass

#Metodi joka kutsutaan 60 kertaa sekunnissa.
func _physics_process(delta):
	
	#Kun painat Escape näppäintä peli vie sinut takaisin aloitusnäyttöön.
	if Input.is_action_pressed("esc"):
		get_tree().change_scene("res://titlescreen.tscn")
	
	motion.x = 0
	
	#Kun painat näppäintä A pelaajan hahmo liikku vasemmalle ja hahmon kuva kääntyy. Myös pelaajan Run animaatio alkaa.
	if Input.is_action_pressed("left"):
		motion.x -= 190
		$playersprite.flip_h = true
		$playersprite.animation = "run"
	
	#Kun painat näppäintä D pelaajan hahmo liikku oikealle ja hahmon kuva kääntyy. Myös pelaajan Run animaatio alkaa.
	elif Input.is_action_pressed("right"): 
		motion.x += 190
		$playersprite.flip_h = false
		$playersprite.animation = "run"
	#Jos olet paikoillasi pelaajan Idle animaatio alkaa.
	else:
		$playersprite.animation = "idle"
	
	#Kun painat näppäintä space pelaajan hahmo hyppää
	if Input.is_action_just_pressed("space") and is_on_floor():
		motion.y = height
	
	#gravity = painovoima
	#delta = moninkertaistaa framen
	motion.y += delta * gravity
	
	#Metodi joka liikuttaa pelaajan kehoa pitkin annettua vektoria ja
	#pysähtyy heti jos havaitaan törmäys jonkun muun kehon kanssa tai jos pelaaja ei liiku.
	motion = move_and_slide(motion, Vector2.UP)
