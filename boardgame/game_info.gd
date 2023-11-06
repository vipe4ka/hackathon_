extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var player = get_node("/root/Global").player
	print_tasks(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func print_tasks(player):
	var font = load("res://typeshit/EpilepsySans.ttf")
	var label = Label.new()
	var score
	var avatar = Sprite2D.new()
	label.position = Vector2(-72.5, -50)
	avatar.position = Vector2(-150, 10)
	if player == "user":
		avatar.texture = load("res://sprites/sprite/clerk.png")
		score = get_node("/root/Global").score_user
		label.text += "Играет пользователь\n"
	else:
		avatar.texture = load("res://sprites/sprite/hacker.png")
		score = get_node("/root/Global").score_hacker
		label.text += "Играет хакер\n"
	avatar.scale = Vector2(0.6, 0.6);
	label.add_theme_font_override("font", font)
	label.add_theme_color_override("font_color", Color(0, 0, 0, 1))
	label.add_theme_font_size_override("font_size", 35)
	label.text += "Количество очков: " + str(score)
	self.add_child(label)
	self.add_child(avatar)
