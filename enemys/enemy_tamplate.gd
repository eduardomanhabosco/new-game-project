extends CharacterBody2D
class_name Enemy

@export_category("Variables")
@export var _enemy_type: String = "chase"
@export var _move_speed: float = 70

func _physics_process(_delta: float) -> void:
	if global.player == null:
		print('Personagem n encontrado')
		return
	match _enemy_type:
		"chase":
			_chase()
		"chase_and_dash":
			_chase_and_dash()
			
func _chase() -> void:
	var _direction: Vector2 = global_position.direction_to(global.player.global_position)
	velocity = _direction * _move_speed
	move_and_slide()

func _chase_and_dash() -> void:
	pass
