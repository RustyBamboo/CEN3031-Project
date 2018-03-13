extends KinematicBody2D
signal under_attack


# Var instead of const to allow player leveling and mob scaling
var MAX_HEALTH = 200
var MAX_MANA = 80
var MAX_STAMINA = 150
var MAX_DEFENSE = 300
var MAX_SPEED = 150


# Current values as opposed to maxima
var velocity = Vector2()
var health = 100
var mana = 100
var stamina = 100
var defense = 100
var speed = 100


const UP_DIRECTION = Vector2(0, -1)
const GRAVITY = 10


# Code processed every frame
func _physics_process(delta):
	velocity.y += GRAVITY
	velocity.x = 0
	pass
	
	
	
# Updates the entity's animation state
func update_state(state_name):
	$Animations.animation = state_name
	pass
	


# Moves the entity using a velocity vector and upward direction
func move(motion):
	return move_and_slide(motion, UP_DIRECTION)
	pass
	
	
	