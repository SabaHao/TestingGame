extends Sprite2D


func _ready():
	hide() 


func _process(delta):
	pass

func onPlayerContact():
	print("Nella Fiore il player è stato colpito")
	self.position = $"../Player".position + Vector2(60, -100)
	show()
