extends RigidBody2D

#var scene =load("res://World/Player.tscn")
var pos = Vector2.ZERO
onready var dirmouse = get_local_mouse_position().normalized()
var speed : float = 100


func _process(delta):
	translate(dirmouse*speed*delta)

