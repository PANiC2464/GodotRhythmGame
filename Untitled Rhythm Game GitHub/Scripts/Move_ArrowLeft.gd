extends Area2D

var speed = Global.song_speed
var sensor = 0
onready var animPop = $LeftArrow

func _process(delta):
	position.y -= speed * delta
	
	if position.y < -50:
		Global.score -= 10
		Global.misses += 1
		queue_free()
	
	if sensor == 1:
		if Global.sensor_ArrowLeft == 1:
			if Input.is_action_just_pressed("ui_left"):
				animPop.play("pop")
				speed = 0
				yield(get_tree().create_timer(0), "timeout")
				
				queue_free()


func _on_Move_ArrowLeft_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1


func _on_Move_ArrowLeft_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
