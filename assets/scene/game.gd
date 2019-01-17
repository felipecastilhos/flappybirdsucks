extends Node2D

var score = 0 
enum GAME_STATE { PLAYING, STOP }
var state = GAME_STATE.PLAYING


func _ready():
	update_hud_score()
	state = GAME_STATE.PLAYING	

func count_score():
	score += 1
	update_hud_score()


func update_hud_score():
	$hud/score.text = str(score)	
	$point_fx.play()

func game_over(): 
	state = GAME_STATE.STOP
	$spawn_pipes/timer.stop()
	$bird.die() 