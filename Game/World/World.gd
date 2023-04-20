extends Node2D
var enemy = preload("res://World/Enemies/Enemy_1.tscn")



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

	
onready var player = $Characters/Player
onready var characters = $Characters



func _on_Enemytimer_timeout():
	var e = enemy.instance()
	var pos = player.position

	if randf() < 0.5:
		pos.x -= rand_range(50.0,100.0)
	else:
		pos.x += rand_range(50.0,100.0)

	e.position = pos
	characters.add_child(e)
