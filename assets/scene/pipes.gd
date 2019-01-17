extends Node2D

var game
var speed = 250

func _ready():
	game = get_tree().current_scene

func _process(delta):
	if game.state == game.GAME_STATE.PLAYING:
		var pos_x = position.x
		pos_x -= speed * delta
		position.x = pos_x
		
		if position.x < -100:
			queue_free()