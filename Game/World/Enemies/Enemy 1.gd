extends KinematicBody2D

var distoplay

var move = Vector2.ZERO

var animation = Sprite
var velocity = Vector2.ZERO
var speed = 100
var pos = Vector2.ZERO




# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	var Player = get_parent().get_node("Player")
	pos = Player.position - position
	pos = pos.normalized()
	position += pos


func _on_Hurtbox_area_entered(_area):
	queue_free()
	#insert dying animation 
	#insert queue_free upon animation finish via signals
