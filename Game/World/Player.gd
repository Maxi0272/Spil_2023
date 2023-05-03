extends KinematicBody2D

var velocity = Vector2.ZERO
var rpm_cap = 100
var next_shot = 0
const MaxSpeed = 200
const accel = 7000
const friction = 100
export var bullet_scene = preload("res://World/Enemies/Bullet_player.tscn")

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right")- Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input_vector = input_vector.normalized()
		
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MaxSpeed, accel * delta)
		
		
	else:
		velocity = Vector2.ZERO
	velocity= move_and_slide(velocity)
	if Input.is_action_just_pressed("space") and $RPM_timer.is_stopped():
		var bullet = bullet_scene.instance()
		add_child(bullet)
		$RPM_timer.start()
	
