extends Control

var heart1=preload("res://heartemoji.tscn")
# try adding emotion here
	

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

#every pat

# Called every frame. 'delta' is the elapsed time since the previous frame.

#	pass


#show a heart and its animation on press
func _on_Buddy_pressed():
	var heart=heart1.instance()
	heart.position= Vector2(700,400)
	add_child(heart)
