extends Node2D

onready var t=get_node("Timer")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var gospoints = 0
onready var animation= $canvas/Heart/AnimationPlayer
var haj_blink = load("res://assets/blahaj_model_fluffel_lv3_blink.png")
var hand_ready_cursor = load("res://assets/lil_petty_idle.png")
var hand_use_cursor=load("res://assets/lil_petty_click-2.png")
#sounds
#var Sgoosh=preload()
var Sintro= preload("res://assets/Sounds/intro.wav")
#emotion
var heart1=preload("res://heartemoji.tscn")
#events
var splashing_love= false
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	$canvas/Control/Points.text=str(gospoints)
	VisualServer.set_default_clear_color(Color(0,0.8,1,0.1))
	print("gospoints:",gospoints)
	print("type:",typeof(gospoints))
	#intro speech
	$canvas/AudioStreamPlayer2D.stream = Sintro
	$canvas/AudioStreamPlayer2D.play()
	
	
	$canvas/Control/Points.pang= 500

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
		
		

#every pat
func _on_Buddy_pressed():
	$canvas/Buddy.texture_pressed=haj_blink
	gospoints += 1
	$canvas/Control/Points.text=str(gospoints)
	print("gospoints:",gospoints)
	animation.play("heart flashing")


# try adding emotion here
	var heart=heart1.instance()
	heart.position= Vector2(rand_range(171,1800),rand_range(126,952))
	add_child(heart)
	
func _input(event):
	if event is InputEventMouseButton :
		if event.pressed == true:
			print("Pressed")
			Input.set_custom_mouse_cursor(hand_use_cursor)
		else:
			print("free")
			Input.set_custom_mouse_cursor(hand_ready_cursor)
	




#manage splash of love event screen 



func _on_closebutton_pressed():
	pass # Replace with function body.
	 # Replace with function body.
	$canvas/PopupSplash.hide()
	splashing_love= false
	gospoints += 25
	$canvas/Control/Points.text=str(gospoints)
