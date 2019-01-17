extends Node2D

onready var pipe = preload("res://assets/scene/pipes.tscn")
var START_POS_X = 400
var MIN_START_Y = -220
var MAX_START_Y = -10



func _ready():
	randomize()
	pass


func _on_timer_timeout():
	create_pipe()


func create_pipe():
	var clone_pipe = pipe.instance()
	clone_pipe.position = Vector2(START_POS_X, rand_range(MIN_START_Y, MAX_START_Y))
	add_child(clone_pipe)