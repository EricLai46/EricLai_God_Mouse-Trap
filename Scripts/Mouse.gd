extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var moveVector = Vector2.ZERO
var canMove=true
var gridPos
var mousespeed=300
var newdirection=Vector2(-1,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	if !Global.isCaught:
		if position.x >=850:
			newdirection.x = -1
	
		if position.x <=100 :
			newdirection.x =1
		
		position += mousespeed*delta*newdirection
	
		if newdirection.x>0:
			flip_h=true
		elif newdirection.x<0:
			flip_h=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Replace with function body.
