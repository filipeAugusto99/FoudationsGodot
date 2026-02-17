class_name Hobbit


extends Node2D


signal kill_wizard


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("hit_wizard"):
		kill_wizard.emit()


func _ready() -> void:
	#print("_ready: %s %s" % [get_instance_id(), name])
	pass
	
	
func _process(delta: float) -> void:
	#p_frames += 1
	rotate(PI * delta)	


func hit_by_spell() -> void:
	scale = Vector2(0.2, 0.2)
	set_process(false)


	
