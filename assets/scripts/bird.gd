  extends RigidBody2D

var is_alive = true

func _ready():
		$anim.play("fly")
		linear_velocity = Vector2(0, 0)
		

#func _process(delta):
#	if is_alive

func _input(event):
	if is_alive:
		if event.is_action_pressed("ui_touch"):
			flap()
 

func flap():
	linear_velocity = Vector2(0, -450)
	$fly_fx.play()
	

func die():
	if is_alive:
		is_alive = false
		$die_fx.play()
		linear_velocity = Vector2(0, -350) 