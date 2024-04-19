class_name BooksLabel
extends Label

func _process(_delta:float) -> void:
	update_text()

func update_text() -> void:
	text = "Books : %s"%Game.ref.data.books_written
	
