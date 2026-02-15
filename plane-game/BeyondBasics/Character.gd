class_name Character


var health: int = 50
var name: String = ""
var weapon: String = ""


func _init(p_health: int, p_name: String, p_weapon: String) -> void:
	health = p_health
	name = p_name
	weapon = p_weapon


func print_health()	-> void:
	print("health:%d" % health)
	
	
func say_info() -> void:
	print("name:%s, weapon:%s" % [
		name,
	 	weapon
	])
