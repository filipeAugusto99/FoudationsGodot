extends Node2D

@onready var plane: Sprite2D = %Plane
@onready var heli: Sprite2D = $Heli
@onready var eating_sound: AudioStreamPlayer = $EatingSound


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var dir: Vector2 = plane.position.direction_to(heli.position)
	plane.look_at(get_global_mouse_position())
	plane.move_local_x(200.0 * delta)
	#plane.translate(dir * 200 * delta)
	#heli.position.y += 20.0 * delta
	#heli.move_local_y(100.0 * delta)
	#heli.rotate(1.5 * delta)
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-1.5 * delta)
		
	if Input.is_action_pressed("ui_right"):
		plane.rotate(1.5 * delta)
	
	if Input.is_action_just_pressed("ui_accept"):
		plane.global_position = Vector2(350, 150)
