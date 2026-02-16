@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	Character.character_count = 0
	var aragorn: Character = Character.new(50, "Aragorn", "Axe")
	var frodo: Character = Character.new(50, "Frodo", "Sting")
	var gandalf: Character = Character.new(50, "Aragorn", "Staff")
	print(Character.character_count)
	print(Character.get_character_count())
