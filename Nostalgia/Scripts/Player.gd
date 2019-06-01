extends KinematicBody2D

var speed = 450
var motion = Vector2()

onready var camera = $Camera2D

func _ready():
	Global.player = self
	if Global.actual_positon != null:
		global_position = Global.actual_positon
	
func _process(delta):
	move()
	move_and_slide(motion * speed)
	
func move():
	if Input.is_action_pressed("left"):
		motion.x = -1
	elif Input.is_action_pressed("right"):
		motion.x = 1
	else:
		motion.x = 0
		
	if Input.is_action_pressed("up"):
		motion.y = -1
	elif Input.is_action_pressed("down"):
		motion.y = 1
	else:
		motion.y = 0