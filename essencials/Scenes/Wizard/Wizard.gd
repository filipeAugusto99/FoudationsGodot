class_name Wizard


extends Node2D


@onready var reveal_timer: Timer = $RevealTimer


#var _elapsed: float = 0.0


func _ready() -> void:
	hide()


func _process(delta: float) -> void:
	#_elapsed += delta
	pass
	


func _on_reveal_timer_timeout() -> void:
	show()
