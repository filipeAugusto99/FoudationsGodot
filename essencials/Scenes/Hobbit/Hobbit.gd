class_name Hobbit


extends Node2D


@export  var hide_time: float = 2.0


@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var hide_timer: Timer = $HideTimer



var p_frames: int = 0
var ph_frames: int = 0


func _init() -> void:
	print("_init: %s %s" % [get_instance_id(), name])


func _enter_tree() -> void:
	print("_enter_tree: %s %s" % [get_instance_id(), name])


func _exit_tree() -> void:
	#print("_exit_tree: %s %s" % [get_instance_id(), name])
	pass

func _ready() -> void:
	#print("_ready: %s %s" % [get_instance_id(), name])
	hide_timer.start(hide_time)
	pass
	
	
func _process(delta: float) -> void:
	#p_frames += 1
	pass


func _physics_process(delta: float) -> void:
	#ph_frames += 1
	pass


func _on_timer_timeout() -> void:
	hide()
