extends Area2D


func _on_Area2D_body_entered(_body):
	GameManager.collect_axe = true
	
func after_dialog(_name):
	print("item found dialog")
	MusicController.collect_sound()
	queue_free()
	
	if GameManager.collect_comp == false:
		GameManager.popup = "Now the compass left!"
	else:
		GameManager.popup = "Let's go to the house!"


func _on_compass_body_entered(body):
	GameManager.collect_comp = true
	
func compass_dialog(_name):
	print("item found dialog")
	MusicController.collect_sound()
	queue_free()
	
	if GameManager.collect_axe == false:
		GameManager.popup = "Now the axe left!"
	else:
		GameManager.popup = "Let's go to the house!"
