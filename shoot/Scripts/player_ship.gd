extends CharacterBody2D
var speed =200;
@export var bullet_element :Resource
func _process(delta: float) -> void:
	var move_dir = Vector2.ZERO
	move_dir.x = Input.get_axis("Left", "Right")
	move_dir.y = Input.get_axis("Up", "Down")
	velocity = move_dir * speed
	if Input.is_action_just_pressed("Shoot"):
		var new_bullet = bullet_element.instantiate()
		get_node("/root").add_child(new_bullet);
		new_bullet.position=self.position;
	move_and_slide();
	
