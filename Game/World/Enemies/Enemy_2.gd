extends KinematicBody2D

var distoplay

var move = Vector2.ZERO
var animation = Sprite
var speed = 100
var pos = Vector2.ZERO
var i = 10

export var bullet_scene = preload("res://World/Enemies/Bullet_enemy.tscn")


#func _physics_process(delta):
#	var player = get_node("/root/World/Player")
#	pos = player.position - position
#	pos = pos.normalized()
#	pos = pos * delta * speed
#	position += pos

func _on_Hurtbox_area_entered(_area):
	i=0
	queue_free()
	#insert dying animation 
	#insert queue_free upon animation finish via signals


func _on_Timer_timeout():
	var bullet = bullet_scene.instance()
	add_child(bullet)
