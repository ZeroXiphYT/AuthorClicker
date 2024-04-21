class_name BooksLabel
extends Label


func _ready() -> void:
	update_text()
	HandlerBooks.ref.books_created.connect(update_text)
	HandlerBooks.ref.books_consumed.connect(update_text)

func update_text(_quantity:int = -1) -> void:
	text = "Books : %s"%HandlerBooks.ref.book_count()
	
