class_name Wizard


extends Node2D


signal cast_spell 


@onready var reveal_timer: Timer = $RevealTimer


#var _elapsed: float = 0.0


func _ready() -> void:
	hide()


func _process(delta: float) -> void:
	#_elapsed += delta
	pass
	


func _on_reveal_timer_timeout() -> void:
	show()


func _on_spell_timer_timeout() -> void:
	cast_spell.emit()
	

func hit_by_enemy():
	scale = Vector2(0.2, 0.2)
