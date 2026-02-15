@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var char1: Character = Character.new(100, "Aragorn", "Axe")
	#char1.health = 20
	#char1.name = "Aragorn"
	#char1.weapon = "Axe"
	
	#char1.print_health()
	
	char1.say_info()
	#print(char1.get_instance_id())
	
	
	#var char2: Character = Character.new()
	#char2.health = 50
	#char2.name = "Frodo"
	#char2.weapon = "Sword"
	##char2.print_health()
	#char2.say_info()
	##print(char2.get_instance_id())
