extends Control

func _ready():
	$VBoxContainer/play.grab_focus()
	MusicController.play_music()
	
	
func _on_play_pressed():
	MusicController.play_sound()
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_help_pressed():
	MusicController.help_sound()
	get_tree().change_scene_to_file("res://scenes/help.tscn")


func _on_exit_pressed():
	MusicController.exit_sound()
	get_tree().quit()
