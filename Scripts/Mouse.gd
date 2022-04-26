extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var isCaught = false
var moveVector = Vector2.ZERO
var canMove=true
var gridPos
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if canMove && (Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down") || Input.is_action_pressed("ui_left") || Input.is_action_pressed("ui_right")):
		
		if Input.is_action_pressed("ui_up"):
			moveVector = Vector2.UP
		elif Input.is_action_pressed("ui_down"):
			moveVector = Vector2.DOWN
		elif Input.is_action_pressed("ui_left"):
			moveVector = Vector2.LEFT
		elif Input.is_action_pressed("ui_right"):
			moveVector = Vector2.RIGHT
		else:
			moveVector = Vector2.ZERO
		if moveVector != Vector2.ZERO && (!isCaught):
		# Determine Facing Direction
		match moveVector:
			Vector2.UP:
				rotation_degrees = 90
				flip_h = false
				offset.x = 4
			Vector2.DOWN:
				rotation_degrees = 270
				flip_h = false
				offset.x = 4
			Vector2.LEFT:
				rotation_degrees = 0
				flip_h = false
				offset.x = 4
			Vector2.RIGHT:
				rotation_degrees = 0
				flip_h = true
				offset.x = -4
				
				var newGridPos = gridPos + moveVector
		newGridPos = Vector2(
			clamp(newGridPos.x, 0, Gm.GRID_DIM.x-1), 
			clamp(newGridPos.y, 0, Gm.GRID_DIM.y-1))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
