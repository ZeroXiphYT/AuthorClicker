class_name PrototypeClicker
extends Control


@export var view : UserInterface.Views
@export var user_interface : UserInterface







func write_book() -> void:
	HandlerBooks.ref.write_books(Game.ref.data.writing_speed)



func _ready() -> void:
	visible = true
	user_interface.navigation_requested.connect(_on_navigation_request)

func _on_button_pressed() -> void:
	write_book()

func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	if requested_view == view:
		visible = true
		return
		
	visible = false

