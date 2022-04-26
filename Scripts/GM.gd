extends Node


 

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var iscaught=false
var bombScene = preload("res://Scenes/Bomb.tscn")
var mouseScene = preload("res://Scenes/Mouse.tscn")
var trapScene=preload("res://Scenes/TrapBowl.tscn")

onready var trapScript=get_node("res://Scripts/TrapBowl.gd")

var bomb
var mouse
var trap

var difficultLevel=1
# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree(), "idle_frame")
	#yield(get_tree().create_timer(1), "timeout") # 1 second delay
	GenerateMap(difficultLevel)
	
	
	
func GenerateMap(level):
	bomb=bombScene.instance()
	mouse=mouseScene.instance()
	match level:
		1:
			$AnimatedSprite.play("BigTrapBowl")
		2:
			$AnimatedSprite.play("MiddleTrapBowl")
		3:
			$AnimatedSprite.play("SmallTrapBowl")
	trap=trapScene.instance()
	
	
func _process(delta):
	while(trapScript.isfalling):
		if trapcollision():
			pass
		
		
func trapcollision():
	return true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
