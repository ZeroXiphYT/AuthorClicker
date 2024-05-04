class_name GeneratingSpeedLabel
extends Label

func _process(_delta:float) -> void:
	update_text()

func update_text() -> void:
	text = "Generating Speed : %s"%Game.ref.data.autowrite_speed
	
	
