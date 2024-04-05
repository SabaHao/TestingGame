extends Node

@export var enemyScene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$Player.position = $Marker2D.position - Vector2(100, 100)
	spawnEnemy()


func _process(delta):
	pass


func spawnEnemy():
	var enemy = enemyScene.instantiate()
	add_child(enemy)
	enemy.position = $Marker2D.position



