extends Area2D




func _on_house_input_event(_viewport, event, _shape_idx):
	if GameManager.collect_axe == false or GameManager.collect_comp == false:
		GameManager.popup = "Get the tools!"
	else:
		if event is InputEventMouseButton:
			GameManager.popup = "Entering house"
			
