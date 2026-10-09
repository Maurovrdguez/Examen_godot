extends CharacterBody2D


const SPEED = -100.0
var velocidad = SPEED

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if $RayCast2D.is_colliding():
		velocidad = SPEED * 2;
		
	if not $RayCast2D.is_colliding():
		velocidad = SPEED;
		
	velocity.x = velocidad;
	move_and_slide()
