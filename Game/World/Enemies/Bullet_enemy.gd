extends RigidBody2D


var pos = Vector2.ZERO
onready var dir = (get_node("res://World/Enemies/Bullet_enemy.tscn").global_position - global_position).normalized()
var speed : float = 100


func _process(delta):
	translate(dir*speed*delta)
