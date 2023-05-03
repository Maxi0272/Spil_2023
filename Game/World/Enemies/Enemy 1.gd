extends KinematicBody2D

var distoplay

var move = Vector2.ZERO
var animation = Sprite
var speed = 70
var pos = Vector2.ZERO

#func _ready():
	#var scene = load("res://World/Enemies/Bullet_enemy.tscn")
	#var bullet = scene.instance()
	#add_child(bullet)


func _physics_process(delta):
	var Player = get_parent().get_node("Player")
	pos = Player.position - position
	pos = pos.normalized()
	pos = pos * delta * speed
	position += pos

		
	
	

	



func _on_Hurtbox_area_entered(_area):
	queue_free()
	#insert dying animation 
	#insert queue_free upon animation finish via signals
