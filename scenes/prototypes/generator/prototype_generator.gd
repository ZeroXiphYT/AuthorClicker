class_name PrototypeGenerator
extends Control


@export var label: Label
@export var button: Button
@export var timer: Timer
@export var user_interface : UserInterface

var booksWritten : int 
var writingSpeed : int = 1


@export var view : UserInterface.Views

func _ready() -> void:
	update_label_text()
	visible = false
	user_interface.navigation_requested.connect(_on_navigation_request)

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

func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	if requested_view == view:
		visible = true
		return
		
	visible = false
