extends Control

@export var game_scene_path: String = "res://shmup.tscn"

func _ready() -> void:
	
	$Button.pressed.connect(_on_start_pressed)

func _on_start_pressed() -> void:
 
	get_tree().change_scene_to_file(game_scene_path)
