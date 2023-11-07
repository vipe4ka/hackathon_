extends TextureButton

var player
var placeX = 0
var placeY = 0
var user 
var hacker

# Called when the node enters the scene tree for the first time.
func _ready():
	user = get_node("/root/Global").user
	hacker = get_node("/root/Global").hacker
	player = get_node("/root/Global").player

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	if get_node("/root/Global").player == "user":
		if (user.x == placeX + 1 and user.y == placeY) or (user.x == placeX and user.y == placeY + 1):
			get_node("/root/Global").user = Vector2(placeX, placeY)
			get_node("/root/Global").userPlace = self
	elif get_node("/root/Global").player == "hacker":
		if (hacker.x == placeX + 1 and hacker.y == placeY) or (hacker.x == placeX and hacker.y == placeY + 1):
			get_node("/root/Global").hacker = Vector2(placeX, placeY)
			get_node("/root/Global").hackerPlace = self
	
	
	
	if get_node("/root/Global").player == "user":
		get_node("/root/Global").player = "hacker"
	elif get_node("/root/Global").player == "hacker":
		get_node("/root/Global").player = "user"
