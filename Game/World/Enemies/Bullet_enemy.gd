extends RigidBody2D

#var scene =load("res://World/Player.tscn")
var pos = Vector2.ZERO
onready var dir = (get_parent().get_parent().get_node("Player").global_position - global_position).normalized()
var speed : float = 100


func _process(delta):
	translate(dir*speed*delta)

