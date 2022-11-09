extends Camera

var speed_multiplier: int = 1
var mouse_position: Vector2
var global_delta

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		translate(Vector3(0, 0, -5 * delta))
	
	if Input.is_action_pressed("ui_down"):
		translate(Vector3(0, 0, 5 * delta))
		
	if Input.is_action_pressed("ui_right"):
		translate(Vector3(5 * delta, 0, 0))
		
	if Input.is_action_pressed("ui_left"):
		translate(Vector3(-5 * delta, 0, 0))
	
	global_delta = delta
	
func _input(event):
	if event is InputEventMouseMotion:
		event.relative
		print(clamp(rad2deg(event.relative.y), -90, 90))
		#rotate_y(pos_change.y/5)
		#rotate_x(pos_change.x/5)
		
		rotation.z = 0
			
func _unhandled_input(event):
	if event is InputEventKey:
		print(event.scancode)

func _ready():
	print("Hello world!")


