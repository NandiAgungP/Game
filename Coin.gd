extends Area2D

signal coin_keambil

export var point = 10

func _bila_ada_masuk(body):
	$AnimationPlayer.play("coin")
	
func _die():
	emit_signal("coin_keambil", point)
#	get_tree().call_group("scene1","_on_TambahPoint" ,point)
	queue_free()
	
