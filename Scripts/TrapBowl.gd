extends AnimatedSprite




var newdirection=Vector2(0,0)
var fallspeed=300


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if !Global.isover:
		if Input.is_action_pressed("Mouse_down"):
			
			newdirection.y=1
		if position.y>=370:
			Global.isgrounded=true
			Global.difficultlevel=1
			newdirection.y=0
			Global.setscene("res://Scenes/Died.tscn")
		position +=newdirection*delta*300
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	print (fallspeed)
