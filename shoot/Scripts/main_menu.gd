extends Control
@export var game_scene_path: String = "res://shmup.tscn"
@export var credit_path: String = "res://Credits.tscn"
@export var direction_path: String = "res://Directions.tscn"
func _ready() -> void:
	$Button.pressed.connect(_on_start_pressed)
	$Button2.pressed.connect(_on_Credits)
	$Button3.pressed.connect(_directions)
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file(game_scene_path)

func _on_Credits() -> void:
	get_tree().change_scene_to_file(credit_path)
func _directions() -> void:
	get_tree().change_scene_to_file(direction_path)
