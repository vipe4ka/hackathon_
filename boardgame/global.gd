extends Node


var player
var day
var score_user
var score_hacker

# Called when the node enters the scene tree for the first time.
func _ready():
	player = "user"
	day = 1
	score_user = 0
	score_hacker = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
