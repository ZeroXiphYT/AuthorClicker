class_name Game
extends Node


static var ref : Game


func _singleton_check() -> void:
	if not ref:
		ref = self
		return
		
	queue_free()

var data: Data

func _enter_tree() -> void:
	_singleton_check()
	data = Data.new()
