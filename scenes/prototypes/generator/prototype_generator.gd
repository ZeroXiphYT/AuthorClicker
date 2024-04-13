class_name PrototypeGenerator
extends Control


@export var label: Label
@export var button: Button
@export var timer: Timer

var booksWritten : int 
var writingSpeed : int = 1

func _ready() -> void:
	update_label_text()

func write_books() -> void:
	booksWritten += writingSpeed
	update_label_text()

func update_label_text() -> void:
	label.text = "Books Written : %s" %booksWritten

func begin_autowriting_books() -> void:
	timer.start()
	button.disabled = true


func _on_button_pressed():
	begin_autowriting_books()


func _on_timer_timeout():
	write_books()
