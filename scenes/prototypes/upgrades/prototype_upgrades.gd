class_name PrototypeUpgrades
extends Control

@export var view : UserInterface.Views
@export var user_interface : UserInterface

func _ready() -> void:
	visible = false
	
	user_interface.navigation_requested.connect(_on_navigation_request)

func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	if requested_view == view:
		visible = true
		return
		
	visible = false
