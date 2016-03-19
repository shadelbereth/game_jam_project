
extends Node2D

var sprite_ennemy
var speed

func _ready():
	sprite_ennemy = get_node("ennemy")
	sprite_ennemy.set_pos(Vector2(0,0))
	speed = [1,1]
	set_process(true)

func _process(delta):
	var pos = sprite_ennemy.get_pos()
	var posX = pos.x
	var posY = pos.y
	posX += speed[0] * delta
	posY += speed[1] * delta
	sprite_ennemy.set_pos(Vector2(posX, posY))