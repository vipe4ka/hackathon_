extends TextureButton

var player
var placeX = 0
var placeY = 0
var user
var hacker
# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node("/root/Global").player
	user = get_node("/root/Global").user
	hacker = get_node("/root/Global").hacker

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	get_node("/root/Global").bytes += 1
	if get_node("/root/Global").player == "user":
		if user == Vector2(placeX - 1, placeY) or user == Vector2(placeX, placeY - 1) or user == Vector2(placeX + 1, placeY):
			get_node("/root/Global").user = Vector2(placeX, placeY)
	elif get_node("/root/Global").player == "hacker":
		if hacker == Vector2(placeX - 1, placeY) or hacker == Vector2(placeX, placeY - 1) or hacker == Vector2(placeX + 1, placeY):
			get_node("/root/Global").hacker = Vector2(placeX, placeY)
	
	
	
	if get_node("/root/Global").player == "user":
		get_node("/root/Global").player = "hacker"
	elif get_node("/root/Global").player == "hacker":
		get_node("/root/Global").player = "user"
