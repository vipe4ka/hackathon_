extends Sprite2D
"metadata/MODE"

var tasksFirstDayUser = [
	"Создайте базу данных",
	"Установите права доступа",
	"Установите браузер",
	"Добавьте нового пользователя",
	"Защитите базу данных"
]

# Called when the node enters the scene tree for the first time.
func _ready():
	var player = get_node("/root/Global").player
	var day = get_node("/root/Global").day
	print_tasks(player, day)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func print_tasks(player, day):
	var tasks
	var font = load("res://typeshit/EpilepsySans.ttf")
	if player == "user":
		var label = Label.new()
		label.add_theme_font_override("font", font)
		label.add_theme_color_override("font_color", Color(0, 0, 0, 1))
		label.add_theme_font_size_override("font_size", 24)
		for i in range(tasksFirstDayUser.size()):
			label.text += "\n" + str(i+1) + ". " + tasksFirstDayUser[i]
		self.add_child(label)
	
		

