extends KinematicBody2D


var speed = 100
var arah = -1
var damage = 15

signal player_hit

func _physics_process(delta):
	if(is_on_wall()):
		arah = arah *-1
		$Dino3.flip_h = !$Dino3.flip_h
		
		
		var gerakan = Vector2(arah * speed , 0)
		
		
#	if(benda.collider.name == "Player" ):
#		print ("hit player")
#	if(benda.collider.is_in_group("player")):
#		print("hit player 2")




func _on_HitArea_body_entered(body):
	emit_signal("playerhit" , damage , position)
	

