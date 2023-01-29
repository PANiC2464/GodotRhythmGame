extends Node2D

const AL = preload("res://Scenes/Move_ArrowLeft.tscn")
const AD = preload("res://Scenes/Move_ArrowDown.tscn")
const AU = preload("res://Scenes/Move_ArrowUp.tscn")
const AR = preload("res://Scenes/Move_ArrowRight.tscn")

var random = 0
var RNG = RandomNumberGenerator.new()

onready var Rank = $Stats/Rank

func _process(delta):
	
	$Stats/ScoreNumber.text = str(Global.score)
	$Stats/MissesNumber.text = str(Global.misses)
	
	Rank.set_text("N/A")
	
	if Global.misses == 0:
		Rank.set_text("FC")
	else:
		if Global.misses >= 0 and Global.misses <= 9:
			Rank.set_text("SDCB")
		else:
			if Global.misses >= 9:
				Rank.set_text("Clear")
	
	pass


#func _on_Timer_timeout():
	
	#$Timer.start()
	#RNG.randomize()
	#var random_int = RNG.randi_range(1, 4)
	#random = random_int
	
	#if random == 1:
		#var al = AL.instance()
		#get_parent().add_child(al)
		#al.position = $Create/Position2D_AL .global_position
	
	#if random == 2:
		#var ad = AD.instance()
		#get_parent().add_child(ad)
		#ad.position = $Create/Position2D_AD .global_position
	
	#if random == 3:
		#var au = AU.instance()
		#get_parent().add_child(au)
		#au.position = $Create/Position2D_AU .global_position
	
	#if random == 4:
		#var ar = AR.instance()
		#get_parent().add_child(ar)
		#ar.position = $Create/Position2D_AR .global_position
