extends Node

var currentscene=null
var isover=false
var difficultlevel=1
var isCaught = false
var isfalling=true
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	currentscene=get_tree().get_root().get_child(get_tree().get_root().get_child_count()-1)
	
func setscene(scene):
	currentscene.queue_free()
	var s=load(scene)
	currentscene=s.instance()
	get_tree().get_root().add_child(currentscene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
