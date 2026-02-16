class_name Character

static var character_count: int = 0


static func get_character_count() -> String:
	return "There are %d characters" % character_count


const MAX_SPEED: int = 1000


var _health: int = 50
var _name: String = ""
var _weapon: String = ""

# Health Propertie
var health: int = 20:
	get:	
		print("get health")
		return _health
	set(value):
		print("set health:", value)
		_health = clampi(value, 0, 100)


# Name Propertie
var name: String = "NO NAME":
	get:
		print("get name")
		return _name
	set(value):
		_name = value


var weapon: String = "NO WEAPON":
	get:
		print("get weapon")
		return _weapon
	set(value):
		_weapon = value

# Alternative Sintax
#var health: int:
	#get = get_health, set = set_health


func _init(p_health: int, p_name: String, p_weapon: String) -> void:
	_health = p_health
	_name = p_name
	_weapon = p_weapon
	character_count += 1
	

#func get_health() -> int:
	#return _health
	
	
#func set_health(new_health: int) -> void:
	#_health = new_health
	#
	#if _health > 100: _health = 100
	#elif _health < 0: _health = 0
	

func print_health()	-> void:
	print("health:%d" % health)
	
	
func say_info() -> void:
	print("name:%s, weapon:%s" % [
		_name,
	 	_weapon
	])
