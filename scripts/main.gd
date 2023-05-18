extends Node2D

func _ready():
	MusicController.stop_music()
	#$ground/path/Player.MAX_SPEED = 0
	
func after_dialog(_name):
	print("Game Start!")
	$ground/path/Player.MAX_SPEED = 200
	GameManager.popup = "Let's go find our tools!"
