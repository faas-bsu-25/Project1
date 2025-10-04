extends Timer
var enemy_scene = preload("res://Elements/enemy.tscn");
func _on_timeout() -> void:
	var new_enemy= enemy_scene.instantiate();
	get_tree().current_scene.add_child(new_enemy);
	var viewport_rect = get_viewport().get_visible_rect()
	var x_spawn = randi_range(
		int(viewport_rect.position.x),
		int(viewport_rect.position.x + viewport_rect.size.x-20)
	);
	var y_spawn = viewport_rect.position.y - 10
	new_enemy.position = Vector2(x_spawn,y_spawn)
	pass 
