extends RigidBody2D


var pos = Vector2.ZERO
onready var dir = (get_node("/root/World/Player").global_position - global_position).normalized()
var speed : float = 100


func _process(delta):
	translate(dir*speed*delta)
