extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	connect("area_entered",self,"_on_Area2D_area_entered")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

	



func _on_Area2D_area_entered(area):
	Global.isCaught=true
	Global.isover=true
	if Global.difficultlevel<3:
		Global.difficultlevel+=1
	Global.setscene("res://Scenes/Victory.tscn")
