extends KinematicBody2D


var count =0
var speed =5

func _physics_process(delta):
	if(Input.is_action_pressed("Maju")):
	#	$Player.position.x += speed
	#	print("maju")
		move_and_collide((Vector2(speed , 0)
		print("maju")
	elif(Input.is_action_pressed("Mundur")):
		move_and_collide(Vector2(-speed , 0)
		print("mundur")
# Called when the node enters the scene tree for the first time.
func _process(delta):
	pass
