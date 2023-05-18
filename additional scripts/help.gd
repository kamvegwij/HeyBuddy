extends Control

func _ready():
	pass
	
func _on_back_pressed():
	MusicController.exit_sound()
	get_tree().change_scene("res://scenes/menu.tscn")
