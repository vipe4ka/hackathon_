extends Sprite2D

var visible_icons = []
var visible_side_icons = []
var map = []
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print_map()
	if map[0][0].is_pressed():
		get_tree().quit()

func print_map():
	var posX = 50
	var posY = 50
	var buttons = 6
	for i in 6:
		var row = []
		var icon
		for j in 9:
			icon = TextureButton.new()
			if get_node("/root/Global").gamemap[i][j] == "res":
				icon.texture_normal =  preload("res://sprites/sprite/iconexp.png")
				icon.scale = Vector2(5, 5)
			if get_node("/root/Global").gamemap[i][j] == "spell":
				icon.texture_normal =  preload("res://sprites/sprite/iconetxt.png")
				icon.scale = Vector2(3, 3)
			row.append(icon)
			icon.position = Vector2(posX, posY)
			posX += 500
		map.append(row)
		posY += 330
		posX = 50
