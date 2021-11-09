extends KinematicBody2D
export var speed = 300

var movement = Vector2(0,0)
const accel = 50
const max_speed = 100
const gravity = 10
const jump_force = -450
const max_jump = 2
var jump_count =0
var motion = Vector2()
export var lives = 100 

func _get_lives():
	return lives
	
func _set_lives(l):
	lives = l

func _get_hit(damage , enemy_pos):
	_set_lives(_get_lives()-damage)
	print (lives)
	var arah = (enemy_pos - position).normallized()
	var pantul = Vector2(-arah * 2500)
	move_and_slide(pantul , Vector2.UP , false, 4, PI/4 , false)
	
 
func _physics_process(delta):
	
	
	if(not is_on_floor()):
		movement.y += gravity
		
	else :
		movement.y = 0
		jump_count = 0
		movement.x = lerp(movement.x , 0 , 0.1)
		
	
	 
	
	if(Input.is_action_pressed("Maju")):
		movement.x +=accel
		movement.x = min(movement.x , max_speed)
		$Knight.flip_h = true
		$Knight.position.y = -150
		$Knight.play("Jalan")
		
	elif(Input.is_action_pressed("Mundur")):
		movement.x -= accel
		movement.x = max(movement.x , -max_speed)
		$Knight.flip_h = false
		$Knight.position.y = -150
		$Knight.play("Jalan")
	else:
		$Knight.play("Diem")
		$Knight.position.y = -1
		motion.x = lerp(motion.x, 0,0.2) 
		
	if(Input.is_action_pressed("Naik")):
		movement.y = max(movement.y - accel , -max_speed)
	elif(Input.is_action_pressed("Turun")):
		movement.y = min(movement.y + accel , max_speed)
		
	if(Input.is_action_just_pressed("Jump") and (is_on_floor() or (jump_count < max_jump)) ):
		movement.y = jump_force
		jump_count += 1 
		
	if(is_on_ceiling()):
		print("diatap")
	elif(is_on_wall()):
		print("ditembok")
		
		

	move_and_slide(movement, Vector2(0,-1))


