extends CharacterBody2D

signal contact

@export var speed = 100
var canMove = true

# Called when the node enters the scene tree for the first time.
func _ready():
	$PlayerSprite.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (canMove):
		var velocity = Vector2.ZERO
		if (Input.is_action_pressed("moveRight")):
			velocity.x += 1
		if (Input.is_action_pressed("moveLeft")):
			velocity.x -= 1
		if (Input.is_action_pressed("moveUp")):
			velocity.y -= 1
		if (Input.is_action_pressed("moveDown")):
			velocity.y += 1
		
		if velocity.length() > 0:
			velocity = velocity.normalized() * speed 
		var collision = move_and_collide(velocity * delta)


func _on_player_area_area_entered(area):
	print("Qualcosa nel Player")
	canMove = false
	contact.emit()
