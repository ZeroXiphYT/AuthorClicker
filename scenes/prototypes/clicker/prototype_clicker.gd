class_name PrototypeClicker
extends Control

@export var label : Label


var booksWritten : int = 0
var writingSpeed : int = 1


func write_book() -> void:
	booksWritten += writingSpeed
	update_label_text()


func update_label_text() -> void:
	label.text = "Books Written : %s" %booksWritten
	

func _ready() -> void:
	update_label_text()

func _on_button_pressed() -> void:
	write_book()
