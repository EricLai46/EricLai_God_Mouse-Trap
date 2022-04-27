extends Node


 
enum gamestate{welcome,play,over}
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var trapbowlposition=Vector2(467,74)
var bombScene = preload("res://Scenes/Bomb.tscn")
var mouseScene = preload("res://Scenes/Mouse.tscn")
#var bigtrapScene=preload("res://Scenes/BigTrapBowl.tscn")
#var middletrapScene=preload("res://Scenes/MiddleTrapBowl.tscn")
#var smalltrapScene=preload("res://Scenes/SmallTrapBowl.tscn")

onready var bigbowl=$Area2D3/BigTrapBowl
#onready var middlebowl=$Area2D4/AnimatedSprite
#onready var smallbowl=$Area2D5/AnimatedSprite
onready var bomb=$Bomb
onready var mouse=$Area2D2
onready var bigbowlposition=$Area2D3
onready var leveltext=$TextEdit
var temporytext


var trap


# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree(), "idle_frame")
	#yield(get_tree().create_timer(1), "timeout") # 1 second delay
	GenerateMap(Global.difficultlevel)
	Global.isover=false
	Global.isCaught=false
	Global.isgrounded=false
	temporytext="Level:"+str(Global.difficultlevel)
	leveltext.set_text(temporytext)
	#bomb.animation="blow"
	bomb.set_frame(0)
	
	
func GenerateMap(level):
	#bomb=bombScene.instance()
	#mouse=mouseScene.instance()
	
	match level:
		1:
			bigbowl.animation="BigTrapBowl"
			bigbowl.play()
		2:
			bigbowl.animation="MiddleTrapBowl"
			bigbowl.play()
		3:
			bigbowl.animation="SmallTrapBowl"
			bigbowl.play()
	
	
	
func _process(delta):
	
	bombblow()
	trapcollision()
	print ("wan:",bigbowl.position.y)
	
		
		
func trapcollision():
	if bigbowl.position.y>=340 &&!Global.isgrounded:
		if mouse.position.x+17>=450:
			Global.isCaught=true
			Global.isover=true
			if Global.difficultlevel<3:
				Global.difficultlevel+=1
			Global.setscene("res://Scenes/Victory.tscn")
			
func bombblow():
	if bomb.get_frame()==14:
		bomb.stop()
		Global.difficultlevel=1
		Global.isover=true
		
		Global.setscene("res://Scenes/Died.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
