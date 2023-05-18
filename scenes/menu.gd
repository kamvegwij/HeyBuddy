extends Control

func _ready():
	$VBoxContainer/play.grab_focus()
	
func _on_play_pressed():
	$play_click.play()
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_help_pressed():
	$help_click.play()
	get_tree().change_scene_to_file("res://scenes/help.tscn")


func _on_exit_pressed():
	$exit_click.play()
	get_tree().quit()
