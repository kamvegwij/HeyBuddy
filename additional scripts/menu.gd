extends Control

func _ready():
	$VBoxContainer/play.grab_focus()
	$Tree64X64/AnimationPlayer.play("tree_updown")
	MusicController.play_music()
	
	
func _on_play_pressed():
	MusicController.play_sound()
	get_tree().change_scene("res://scenes/main.tscn")


func _on_help_pressed():
	MusicController.help_sound()
	get_tree().change_scene("res://scenes/help.tscn")


func _on_exit_pressed():
	MusicController.exit_sound()
	get_tree().quit()
