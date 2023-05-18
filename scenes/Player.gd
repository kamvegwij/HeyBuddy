extends KinematicBody2D

export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			target = get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 3:
		velocity = move_and_slide(velocity)*delta
