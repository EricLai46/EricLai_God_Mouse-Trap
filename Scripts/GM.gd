extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var iscaught=false
var bombScene = preload("res://Scenes/Bomb.tscn")
var mouseScene = preload("res://Scenes/Mouse.tscn")
var bomb
var mouse
# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree(), "idle_frame")
	#yield(get_tree().create_timer(1), "timeout") # 1 second delay
	GenerateMap()
	
	
	
func GenerateMap(difficultyLevel = 1):
	bomb=bombScene.instance()
	mouse=mouseScene.instance()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
