extends Area2D

var speed = Global.song_speed
var sensor = 0
onready var animPop = $RightArrow

func _process(delta):
	position.y -= speed * delta
	
	if position.y < -50:
		Global.score -= 10
		Global.misses += 1
		queue_free()
	
	if sensor == 1:
		if Global.sensor_ArrowRight == 1:
			if Input.is_action_just_pressed("ui_right"):
				animPop.play("pop")
				speed = 0
				yield(get_tree().create_timer(0), "timeout")
				
				queue_free()


func _on_Move_ArrowRight_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1


func _on_Move_ArrowRight_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
