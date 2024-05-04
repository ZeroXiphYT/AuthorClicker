class_name Up01ClickerUpgrade
extends Node
## faster typing = per sec, better keyboard = per click


signal leveled_up


var level : int
var title : String = "Better Keyboard"
var base_cost : int = 5
var cost : int


func _init() -> void:
	level = Game.ref.data.up_01_level
	calculate_cost()



func description() -> String:
	var _description : String = "Buy a better keyboard, allowing you to write more books every click."
	_description += "\nEffect: +1 Book Per Click / Level"
	_description += "\nCost: %s"%cost
	
	return _description


func calculate_cost() -> void:
	cost = int(base_cost * pow(1.5, level))


func can_afford() -> bool:
	if HandlerBooks.ref.book_count() >= cost:
		return true
		
	return false


func level_up() -> void:
	var error : Error = HandlerBooks.ref.consume_books(cost)
	
	if not error: 
		level += 1
		Game.ref.data.up_01_level = level
		
		var new_writing_speed : int = level
		
		Game.ref.data.writing_speed += new_writing_speed
		calculate_cost()
		
		leveled_up.emit()




