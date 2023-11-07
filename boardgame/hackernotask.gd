extends Button

var card_pressed

# Called when the node enters the scene tree for the first time.
func _ready():
	card_pressed = get_node("/root/Global").card_pressed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
		
