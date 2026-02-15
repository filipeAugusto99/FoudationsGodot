extends Node2D

@onready var plane: Sprite2D = %Plane
@onready var heli: Sprite2D = $Heli
@onready var eating_sound: AudioStreamPlayer = $EatingSound


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# this method allow i control the position x of the plane
	plane.position.x += 60.0 * delta
	heli.position.x += 60.0 * delta
	#heli.move_local_y(100.0 * delta)
	#heli.rotate(1.5 * delta)
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-1.5 * delta)
		
	if Input.is_action_pressed("ui_right"):
		plane.rotate(1.5 * delta)
	
	if Input.is_action_just_pressed("ui_accept"):
		plane.global_position = Vector2(350, 150)
