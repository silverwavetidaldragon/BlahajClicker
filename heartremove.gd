extends Node2D

onready var t=get_node("Timer")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_Timer_timeout():
	print("we are on timeout")
	t.set_wait_time(1)
	print("have set wait time")
	var hearts = get_tree().get_nodes_in_group("heart")
	for heart in hearts:
		heart.queue_free()
		print("delete")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
