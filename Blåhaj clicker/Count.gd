extends Node2D

onready var t=get_node("Timer")
onready var level= 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var gospoints = $canvas/Control/Points.points
onready var friendship_level= $canvas/Control/HealthBar/FriendshipMeter
onready var animation= $canvas/Control/Heart/AnimationPlayer
var haj_blink = load("res://assets/blahaj_model_fluffel_lv3_blink.png")
var hand_ready_cursor = load("res://assets/lil_petty_idle.png")
var hand_use_cursor=load("res://assets/lil_petty_click-2.png")
#sounds

#story lines
var Sintro= preload("res://assets/Sounds/intro.wav")
var level1= preload("res://assets/Sounds/level_2.wav")
var level2= preload("res://assets/Sounds/level_3.wav")
var level3= preload("res://assets/Sounds/level_4.wav")
var level4= preload("res://assets/Sounds/level_5.wav")
var level5= preload("res://assets/Sounds/level_6.wav")
var level6= preload("res://assets/Sounds/level_7.wav")
var level7= preload("res://assets/Sounds/level_8.wav")
var level8= preload("res://assets/Sounds/level_8b.wav")
var level9= preload("res://assets/Sounds/level_9.wav")
var level10= preload("res://assets/Sounds/level_10.wav")
#emotion
#var heart1=preload("res://heartemoji.tscn")

#events
var splashing_love= false
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	#$canvas/Control/Points.text=str(gospoints)
	VisualServer.set_default_clear_color(Color(0,0.8,1,0.1))
	#print("gospoints:",gospoints)
	#print("type:",typeof(gospoints))
	#intro speech
	$canvas/AudioStreamPlayer2D.stream = Sintro
	$canvas/AudioStreamPlayer2D.play()
	
	
	#$canvas/Control/Points.pang= 500

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#try for splash sea of love event
	rng.randomize()
	var my_random_number = rng.randf_range(0, 20000.0)
	#print("splash event chance:", my_random_number)
	if my_random_number<7:
		splashing_love= true
		#print("SPLASH EVENT")
	if splashing_love:
		$canvas/PopupSplash.show()
		
		
		
	#update value
	friendship_level.value=gospoints
	$canvas/Control/Points.text=str(gospoints)
	#print(gospoints)
	#level stories
	
	#check if can leave intro and begin level 2, the first gained level
	if gospoints>100 and $canvas/AudioStreamPlayer2D.playing==false and level==0 and not level==1:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level1 #goosh!
		$canvas/AudioStreamPlayer2D.play()
		level=1
		$canvas/Control/Level.text= "Level 2"
		friendship_level.max_value=250
		$canvas/Control/GridContainer/ChocolateButton.set_disabled(false)
	
	#check if done with level 2 and can start level 3
	if gospoints>250 and $canvas/AudioStreamPlayer2D.playing==false and level==1 and not level==2:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level2 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=2
		$canvas/Control/Level.text= "Level 3"
		friendship_level.max_value=500
#check if done with level 3 and can start level 4
	if gospoints>500 and $canvas/AudioStreamPlayer2D.playing==false and level==2 and not level==3:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level3 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=3
		$canvas/Control/Level.text= "Level 4"
		friendship_level.max_value=750
	#check if done with level 4 and can start level 5
	if gospoints>750 and $canvas/AudioStreamPlayer2D.playing==false and level==3 and not level==4:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level2 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=4
		$canvas/Control/Level.text= "Level 5"
		friendship_level.max_value=1000
	#check if done with level 5 and can start level 6
	if gospoints>1000 and $canvas/AudioStreamPlayer2D.playing==false and level==4 and not level==5:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level6 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=5
		$canvas/Control/Level.text= "Level 6"
		friendship_level.max_value=1400
	#check if done with level 6 and can start level 7
	if gospoints>1400 and $canvas/AudioStreamPlayer2D.playing==false and level==5 and not level==6:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level7 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=6
		$canvas/Control/Level.text= "Level 7"
		friendship_level.max_value=1500
	#check if done with level 7 and can start level 8
	if gospoints>1500 and $canvas/AudioStreamPlayer2D.playing==false and level==6 and not level==7:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level7 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=7
		$canvas/Control/Level.text= "Level 8"
		friendship_level.max_value=1600
	#check if done with level 8 and can start level 9
	if gospoints>1600 and $canvas/AudioStreamPlayer2D.playing==false and level==7 and not level==8:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level8 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=8
		$canvas/Control/Level.text= "Level 9"
		friendship_level.max_value=1700
	#check if done with level 9 and can start level 10
	if gospoints>1700 and $canvas/AudioStreamPlayer2D.playing==false and level==8 and not level==9:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level9 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=9
		$canvas/Control/Level.text= "Level 10"
		friendship_level.max_value=2000
	if gospoints>2000 and $canvas/AudioStreamPlayer2D.playing==false and level==9 and not level==10:
		
		print("now should play")
		#level speech
		$canvas/AudioStreamPlayer2D.stream = level10 #ehehehe
		$canvas/AudioStreamPlayer2D.play()
		level=10
		$canvas/Control/Level.text= "FOREVER AND EVER"
		#friendship_level.max_value=2000
#every pat
func _on_Buddy_pressed():
	$canvas/Buddy.texture_pressed=haj_blink
	gospoints += 1
	#$canvas/Control/Points.text=str(gospoints)
	#$canvas/Control/Points.pang +=1
	#print("gospoints:",gospoints)
	#Timer.start
	#animation.play("heart-flashing")


# try adding emotion here
	#var heart=heart1.instance()
	#heart.position= Vector2(700,400)
	#add_child(heart)
	
func _input(event):
	if event is InputEventMouseButton :
		if event.pressed == true:
			#print("Pressed")
			Input.set_custom_mouse_cursor(hand_use_cursor)
		else:
			#print("free")
			Input.set_custom_mouse_cursor(hand_ready_cursor)
	




#manage splash of love event screen 



func _on_closebutton_pressed():
	pass # Replace with function body.
	 # Replace with function body.
	$canvas/PopupSplash.hide()
	splashing_love= false
	gospoints += 25
	$canvas/Control/Points.text=str(gospoints)


func _on_ChocolateButton_pressed():
	gospoints += 10

	


func _on_ShopButton_pressed():
	if $canvas/Control/GridContainer.visible:
		$canvas/Control/GridContainer.hide()
	else:
		$canvas/Control/GridContainer.show()
