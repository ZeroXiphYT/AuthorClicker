class_name CompopUpgrades
extends Control

@export var label_title : Label
@export var label_description : RichTextLabel
@export var button : Button

var upgrade : Up01ClickerUpgrade



func _ready() -> void:
	upgrade = Up01ClickerUpgrade.new()
	
	update_label_title()
	update_label_description()
	update_button()
	
	HandlerBooks.ref.books_created.connect(update_button)
	HandlerBooks.ref.books_consumed.connect(update_button)
	
	upgrade.leveled_up.connect(update_label_title)
	upgrade.leveled_up.connect(update_label_description)
	upgrade.leveled_up.connect(update_button)


func update_label_title() -> void:
	var text : String = upgrade.title + " (%s)"%upgrade.level
	label_title.text = text
	


func update_label_description() -> void:
	label_description.text = upgrade.description()
	
	
	
func update_button(_quantity : int = -1) -> void:
	if upgrade.can_afford():
		button.disabled = false
		return
		
	button.disabled = true


func _on_purchase_button_pressed():
	upgrade.level_up()
