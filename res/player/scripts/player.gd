extends CharacterBody2D

const maxSpeed = 700.0
const SPEED = 20.0
const Deselaration = 20

func _physics_process(_delta: float) -> void:
	#bacicMovment()
	complexMovment()
	move_and_slide()
	init_scene()
		
func complexMovment():
	
	var directiony := Input.get_axis("playerUp", "playerDown")
	if directiony:
		if Global.PlayerMovmentEnabled:
			Global.VY += directiony * SPEED
			
			if Global.VY >= maxSpeed:
				Global.VY = maxSpeed
			if Global.VY <= -maxSpeed:
				Global.VY = -maxSpeed
	else:
			Global.VY = move_toward(Global.VY, 0, abs(Global.VY/Deselaration)+4)
			
	var directionx := Input.get_axis("playerLeft", "playerRight")
	if directionx:
		if Global.PlayerMovmentEnabled:
			Global.VX += directionx * SPEED
			if Global.VX >= maxSpeed:
				Global.VX = maxSpeed
			if Global.VX <= -maxSpeed:
				Global.VX = -maxSpeed
	else:
			Global.VX = move_toward(Global.VX, 0, abs(Global.VX/Deselaration)+4)
	velocity.y = Global.VY
	velocity.x = Global.VX
	Global.X = position.x
	Global.Y = position.y

func init_scene():
	if Global.Desired_X != 0 or Global.Desired_Y != 0:
		position.y = Global.Desired_Y
		position.x = Global.Desired_X
		Global.Desired_X = 0
		Global.Desired_Y = 0
