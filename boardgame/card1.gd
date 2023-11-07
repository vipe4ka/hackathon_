extends TextureButton

var current_card_pressed
# Called when the node enters the scene tree for the first time.
func _ready():
	current_card_pressed = get_node("/root/Global").current_card_pressed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _pressed():
	if current_card_pressed == null:
		get_node("/root/Global").current_card_pressed = self.get_index()	
	elif current_card_pressed == self.get_index():
		get_node("/root/Global").current_card_pressed = null	
