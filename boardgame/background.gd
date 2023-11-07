extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func print_map():
	var posX = -180
	var posY = -280
	for i in 6:
		var row = []
		for j in 9:
			var icon = Sprite2D.new()
			
