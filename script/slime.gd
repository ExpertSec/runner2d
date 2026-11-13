extends Node2D
@onready var animated_sprite = $AnimatedSprite2D
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
const SPEED = 60
var direction = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * SPEED * delta
