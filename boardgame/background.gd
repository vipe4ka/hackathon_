extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var config = get_node("/root/Global")
	for i in range(config.count_tasks[config.day]):
		var task = Sprite2D.new()
		var icon = load("res://sprites/sprite/iconetxt.png")
		task.texture = icon
		#task.draw_texture(icon, Vector2(100, 10*i), Color(0,0,0))
		var window = get_parent().get_node("inventoryFrame/window")
		window.add_child(task)
	var int = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
