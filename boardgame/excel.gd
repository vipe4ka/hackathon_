extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

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
