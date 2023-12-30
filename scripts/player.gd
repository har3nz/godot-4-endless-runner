extends CharacterBody2D

const SPEED = 420.0
const JUMP_VELOCITY = -690.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var animation_player

func _physics_process(delta):
	animation_player = $player/AnimationPlayer  # Replace "AnimationPlayer" with the actual path to your AnimationPlayer node
	animation_player.play("run")
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Move to the right continuously by incrementing x position.
	position.x += SPEED * delta
	move_and_slide()
	
