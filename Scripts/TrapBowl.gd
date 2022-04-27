extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var isplaying=true
var newdirection=Vector2(0,0)
var fallspeed=300
var isfalling=false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_select"):
		isfalling=true
		newdirection.y=1
	if position.y>=370:
		newdirection.y=0
	position +=newdirection*delta*300
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	print (fallspeed)
