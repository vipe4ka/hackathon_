extends TextureButton


var cards
var current_card
var player
# Called when the node enters the scene tree for the first time.
func _ready():
	current_card = get_node("/root/Global").index_current_card
	player = get_node("/root/Global").player
	if player == "user":
		cards = get_node("/root/Global").items_user
	elif player == "hacker":
		cards = get_node("/root/Global").items_hacker

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	var path = cards[current_card]
	var texture = load(path)
	var index = null
	if player == "user":
		for i in range(6):
			if !get_node("/root/Global").items_user_inventory[i]:
				index = i
				get_node("/root/Global").items_user_inventory[i] = cards[current_card]
				break
	elif player == "hacker":
		for i in range(6):
			if !get_node("/root/Global").items_user_inventory[i]:
				index = i
				get_node("/root/Global").items_hacker_inventory[i] = cards[current_card]
				break
	if index != null:
		%InventoryContainer.get_child(index).texture_normal = texture
