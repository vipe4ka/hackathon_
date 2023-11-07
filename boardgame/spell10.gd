extends TextureButton

var cards
var current_card
var player
var placeX = 1
var placeY = 0
var user
var hacker
# Called when the node enters the scene tree for the first time.
func _ready():
	cards = get_node("/root/Global").items_user
	player = get_node("/root/Global").player
	user = get_node("/root/Global").user
	hacker = get_node("/root/Global").hacker

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	get_node("/root/Global").bytes += 1
	if get_node("/root/Global").player == "user":
		if user == Vector2(placeX, placeY - 1) or user == Vector2(placeX + 1, placeY) or user == Vector2(placeX, placeY + 1):
			get_node("/root/Global").user = Vector2(placeX, placeY)
			get_node("/root/Global").userPlace = self
	elif get_node("/root/Global").player == "hacker":
		if hacker == Vector2(placeX, placeY - 1) or hacker == Vector2(placeX + 1, placeY) or hacker == Vector2(placeX, placeY + 1):
			get_node("/root/Global").hacker = Vector2(placeX, placeY)
			get_node("/root/Global").hackerPlace = self
	
	
	
	if get_node("/root/Global").player == "user":
		get_node("/root/Global").player = "hacker"
	elif get_node("/root/Global").player == "hacker":
		get_node("/root/Global").player = "user"
	add_card_player()
		
func add_card_player():
	var index1 = randi()%3
	var path = cards[index1]
	var texture = load(path)
	var index = null
	if player == "user":
		for i in range(6):
			if !get_node("/root/Global").items_user_inventory[i]:
				index = i
				get_node("/root/Global").items_user_inventory[i] = cards[index1]
				break
	elif player == "hacker":
		for i in range(6):
			if !get_node("/root/Global").items_user_inventory[i]:
				index = i
				get_node("/root/Global").items_hacker_inventory[i] = cards[index1]
				break
	if index != null:
		%InventoryContainer.get_child(index).texture_normal = texture
