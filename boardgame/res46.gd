extends TextureButton

var cards
var current_card
var player
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	get_node("/root/Global").bytes += 1
