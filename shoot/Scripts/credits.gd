extends Node2D
@export var game_scene_path: String = "res://shmup.tscn"
@export var main_menu_path: String = "res://MainMenu.tscn"
func _ready() -> void:
	$Button.pressed.connect(_on_main_menu)
	$Button2.pressed.connect(_to_game)
func _on_main_menu() -> void:
	get_tree().change_scene_to_file(main_menu_path)

func _to_game() -> void:
	get_tree().change_scene_to_file(game_scene_path)
