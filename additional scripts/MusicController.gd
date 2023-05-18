extends Node

func play_music():
	$background.play()

func stop_music():
	$background.stop()

func collect_sound():
	$collect_sound.play()
	
#button sounds:
func play_sound():
	$play_sound.play()
	
func help_sound():
	$help_sound.play()
	
func exit_sound():
	$exit_sound.play()
	
