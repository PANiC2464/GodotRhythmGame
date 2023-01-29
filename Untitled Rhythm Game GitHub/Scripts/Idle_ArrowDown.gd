extends Area2D

onready var animD = $IdleDownArrow
var sensor = 0

func _process(_delta):
	
	if Input.is_action_just_released("ui_down"):
		animD.play("idle")
	
	if sensor == 1:
		if Input.is_action_just_pressed("ui_down"):
			animD.play("note_hit")
			Global.score += 10
	
	if sensor == 0:
		if Input.is_action_just_pressed("ui_down"):
			animD.play("pressed")

func _on_Idle_ArrowDown_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1
	Global.sensor_ArrowDown = 1


func _on_Idle_ArrowDown_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
	Global.sensor_ArrowDown = 0

