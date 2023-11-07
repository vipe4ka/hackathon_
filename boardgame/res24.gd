extends TextureButton

var cards
var current_card
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
		if user == Vector2(placeX, placeY - 1) or user == Vector2(placeX - 1, placeY) or user == Vector2(placeX + 1, placeY) + user == Vector2(placeX, placeY + 1):
			get_node("/root/Global").user = Vector2(placeX, placeY)
	elif get_node("/root/Global").player == "hacker":
		if hacker == Vector2(placeX, placeY - 1) or hacker == Vector2(placeX - 1, placeY) or hacker == Vector2(placeX + 1, placeY) or hacker == Vector2(placeX, placeY  + 1):
			get_node("/root/Global").hacker = Vector2(placeX, placeY)
	check_current_card()
	
	
	if get_node("/root/Global").player == "user":
		get_node("/root/Global").player = "hacker"
	elif get_node("/root/Global").player == "hacker":
		get_node("/root/Global").player = "user"

func check_current_card():
	var current_card_pressed = get_node("/root/Global").current_card_pressed
	var player = get_node("/root/Global").player
	if current_card_pressed:
		if player == "user":
			get_node("/root/Global").items_user_inventory[current_card_pressed] = null
		elif player == "hacker":
			get_node("/root/Global").items_hacker_inventory[current_card_pressed] = null
	if current_card_pressed != null: 
		%InventoryContainer.get_child(int(current_card_pressed)).texture_normal = null
	get_node("/root/Global").current_card_pressed = null

