extends Control


# Declare member variables here. Examples:
onready var friendship_level= $FriendshipMeter
onready var startpoints= get_node("/root/Node2D")
#
#gospoints= get_node("res://Count.gd").gospoints
#copy paste healthbar gameendeavor
func _on_health_updated(_health,_amount):
	pass
	#friendship_level.value= gospoints
func _on_max_health_updated(_max_health):
	pass
	#friendship_level.max_value= max_health

# Called when the node enters the§ scene tree for the first time.
func _ready():
	#var w = P.pang
	print("variable:",startpoints)
	#$Node2D.gospoints+=20
	#print(w)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
