extends CharacterBody2D

var speed = 25
var player_chase = false
var player = null

func _physics_process(delta):
	if player_chase == true:
		position += (player.position - position) / speed
		

func _on_detection_body_entered(body):
	player = body
	player_chase = true
	


func _on_detection_body_exited(body):
	player = null
	player_chase = false
