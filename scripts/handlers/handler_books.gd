class_name HandlerBooks
extends Node

static var ref : HandlerBooks


func _enter_tree() -> void:
	if not ref:
		ref = self
		return
		
	queue_free()


signal books_created(quantity:int) 

signal books_consumed(quantity:int)


func book_count() -> int:
	return Game.ref.data.books_written


func writing_speed_count() -> int:
	return Game.ref.data.writing_speed


func write_books(quantity:int) -> void:
	Game.ref.data.books_written += quantity
	books_created.emit(quantity)
	
	
func consume_books(quantity:int) -> Error:
	if quantity > Game.ref.data.books_written:
		return Error.FAILED
		
	Game.ref.data.books_written -= quantity
	books_consumed.emit(quantity)
		
	return Error.OK
	
	
	
	
	
	
