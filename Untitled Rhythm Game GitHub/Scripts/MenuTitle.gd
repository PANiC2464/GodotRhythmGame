extends Control

onready var anim = get_node("/root/Menu/AnimationPlayer")

var Start = false

func _ready():
	OS.window_fullscreen = true

func _physics_process(delta):
	if Input.is_action_just_pressed("StartGame") and Start == false:
		Start = true
		anim.play("StartPromptStarted")
		yield(get_tree().create_timer(1.0), "timeout")
		anim.play("TitleStartUp")
		yield(get_tree().create_timer(1.0), "timeout")
		anim.play("PlayStartUp")
		yield(get_tree().create_timer(0.5), "timeout")
		anim.play("OptionsStartUp")
		yield(get_tree().create_timer(0.5), "timeout")
		anim.play("QuitStartUp")
		




func _on_OptionsButton_pressed():
	anim.play("CameraOptions")
	$Sounds/SelectSound.play()


func _on_BackOptionsButton_pressed():
	anim.play_backwards("CameraOptions")
	$Sounds/BackSound.play()


func _on_PlayButton_pressed():
	 anim.play("PlayStartUp")


func _on_QuitButton_pressed():
	get_tree().quit()
