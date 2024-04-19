class_name WritingSpeedLabel
extends Label

func _process(_delta:float) -> void:
	update_text()

func update_text() -> void:
	text = "Writing Speed : %s"%Game.ref.data.writing_speed
	
	
