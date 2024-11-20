class_name BubbleGun extends Gun
## Bubble sort weapon.

@export var BULLET_VELOCITY2 : float = 200  # Custom bullet velocity for BubbleGun
@export var BULLET_SCENE2 : PackedScene = preload("res://player/weapon/gun/bullet.tscn")  # Custom bullet scene for BubbleGun

func shoot(direction: float = 1.0) -> bool:
	if not timer.is_stopped():
		return false
	# Use the custom velocity and bullet scene for the BubbleGun
	var bullet := BULLET_SCENE2.instantiate() as Bullet
	bullet.global_position = global_position
	bullet.linear_velocity = Vector2(direction * BULLET_VELOCITY2, 0.0)

	bullet.set_as_top_level(true)
	add_child(bullet)
	sound_shoot.play()
	timer.start()
	return true
