class_name PrototypeClicker
extends Control

@export var label : Label


@export var view : UserInterface.Views
@export var user_interface : UserInterface






func _process(_delta : float) -> void:
	update_label_text()

func write_book() -> void:
	Game.ref.data.books_written += Game.ref.data.writing_speed


func update_label_text() -> void:
	label.text = "Books Written : %s" %Game.ref.data.books_written
	

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

