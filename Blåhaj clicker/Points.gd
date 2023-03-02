extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var points= 0



# Called when the node enters the scene tree for the first time.
func _ready():
	#print(pang)
	#$canvas/Control/Points.text=str(pang)
	self.text=str(points)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#print("pangs:",pang)
