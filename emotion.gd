extends Node2D

var heart1=preload("res://heartemoji.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_Timer_timeout():
func _on_Buddy_pressed():
	var heart=heart1.instance()
	heart.position= Vector2(rand_range(171,1800),rand_range(126,952))
	add_child(heart)
	
