extends CharacterBody2D

@export var move_dir = Vector2(0, 0)
@onready var collision_shape = $CollisionShape2D


func _ready() -> void:

	velocity = move_dir

   
	

  



func _physics_process(delta: float) -> void:
	move_and_slide()


func _on_screen_entered() -> void:
 
	collision_shape.disabled = false


func _on_screen_exited() -> void:

	queue_free()
