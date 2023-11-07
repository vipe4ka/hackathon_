extends Sprite2D

var visible_icons = []
var visible_side_icons = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var config = get_node("/root/Global")
	for i in range(config.count_tasks[config.day]):
		var rand = randi()%config.max_icons+1
		while !visible_icons.find(rand):
			rand = randi()%config.max_icons+1
		visible_icons.append(rand)
		var path =  "windowFrame/HBoxContainer/window/icon"+str(rand)
		var icon = get_parent().get_node(path).get_child(0)
		icon.visible = true
	for i in range(config.day*2):
		var rand = randi()%config.max_side_icons+1
		while !visible_icons.find(rand):
			rand = randi()%config.max_side_icons+1
		visible_side_icons.append(rand)
		var path =  "windowFrame/HBoxContainer/side_window/side_icon"+str(rand)
		var icon = get_parent().get_node(path).get_child(0)
		icon.visible = true
		


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
			
