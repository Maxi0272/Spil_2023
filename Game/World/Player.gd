extends KinematicBody2D

var velocity = Vector2.ZERO

const MaxSpeed = 200
const accel = 7000
const friction = 7000

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right")- Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input_vector = input_vector.normalized()
		
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MaxSpeed, accel * delta)
		
		
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
	velocity= move_and_slide(velocity)
