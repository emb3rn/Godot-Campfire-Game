extends Camera

var speed_multiplier: int = 1

func recent_event(p_event):
	if p_event.pressed == p_event.scancode:
		return p_event.pressed

func _process(delta):
	
	if Input.is_action_pressed("ui_up"):
		translate(Vector3(0, 0, -5 * delta))
	
	if Input.is_action_pressed("ui_down"):
		translate(Vector3(0, 0, 5 * delta))
		
	if Input.is_action_pressed("ui_right"):
		translate(Vector3(5 * delta, 0, 0))
		
	if Input.is_action_pressed("ui_left"):
		translate(Vector3(-5 * delta, 0, 0))

func _input(event):
	if event is InputEventMouseMotion:
		print(event.position)

func _ready():
	print("Hello world!")


