extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	var date = get_node("/root/Global").day
	self.add_text(str(date)+" день")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
