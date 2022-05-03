extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if(area.name=="Mouse2d"):
		Global.isCaught=true
		Global.isover=true
		if Global.difficultlevel<3:
			Global.difficultlevel+=1
		Global.setscene("res://Scenes/Victory.tscn")
	if(area.name=="Plate2d"):
		Global.isgrounded=true
		Global.difficultlevel=1
		
		Global.setscene("res://Scenes/Died.tscn")
