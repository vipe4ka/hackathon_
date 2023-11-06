extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var config = get_node("/root/Global")
	for i in range(config.count_tasks[config.day]):
		var task = PanelContainer.new()
		var icon = load("res://sprites/sprite/iconetxt.png")
		task
		#task.draw_texture(icon, Vector2(100, 10*i), Color(0,0,0))
		var window = get_parent().get_node("inventoryFrame/window")
		window.add_child(task)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
