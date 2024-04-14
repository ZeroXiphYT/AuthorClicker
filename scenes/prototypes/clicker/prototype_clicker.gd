class_name PrototypeClicker
extends Control

@export var label : Label


@export var view : UserInterface.Views
@export var user_interface : UserInterface


var booksWritten : int = 0
var writingSpeed : int = 1


func write_book() -> void:
	booksWritten += writingSpeed
	update_label_text()


func update_label_text() -> void:
	label.text = "Books Written : %s" %booksWritten
	

func _ready() -> void:
	update_label_text()
	visible = true
	user_interface.navigation_requested.connect(_on_navigation_request)

func _on_button_pressed() -> void:
	write_book()

func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	if requested_view == view:
		visible = true
		return
		
	visible = false

