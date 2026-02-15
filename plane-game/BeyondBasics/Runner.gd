@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn: Character = Character.new(50, "Aragorn", "Axe")
	#print(aragorn.get_health())
	print(aragorn.health)
	print(aragorn.name)
	print(aragorn.weapon)
	#aragorn.set_health(20)
	
	aragorn.health = 2000
	aragorn.name = "New Aragorn"
	aragorn.weapon = "Bow"
	#print(aragorn.get_health())
	print(aragorn.health)
	print(aragorn.name)
	print(aragorn.weapon)
	
	##aragorn.set_health(-5)
	#aragorn.health = -5
	##print(aragorn.get_health())
	#print(aragorn.health)
