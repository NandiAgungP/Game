extends KinematicBody2D

var speed = 100
var arah = -1

func _physics_process(delta):
	if(is_on_wall()):
		arah = arah *-1
		$Dino3.flip_h = !$Dino3.flip_h
		
		
		var gerakan = Vector2(arah * speed , 0)
		

	
		
#	if(is_on_wall()):
#		arah = arah * -1
#
#
#
#	var gerakan = Vector2(arah * speed , 0)
#	if(gerakan.x >0):
#
#
##	gravitasi
#	if(!is_on_floor()):
#		gerakan.y = 200
#
	

