extends Node

var player
var day
var score_user
var score_hacker
var count_tasks = {1: 3, 2: 4, 3: 5}
var completedTasks_user = 0
var completedTasks_hacker = 0
var items_user
var items_hacker
var items_user_inventory
var items_hacker_inventory
var gamemap

# Called when the node enters the scene tree for the first time.
func _ready():
	_init_map()
	day = 1
	score_user = 0
	score_hacker = 0
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if day == 3 and score_hacker > score_user or day == 2 and score_hacker == 2:
		pass
	elif day == 3 and score_hacker < score_user or day == 2 and score_user == 2:
		pass
	


func _init_map():
	gamemap = [
	["my computer", "res", "res", "mail", "res", "res", "res", "1c", "res"],
	["res", "res", "spell", "res", "res", "word", "res", "res", "res"],
	["res", "spell", "gimp", "spell", "res", "res", "winrar", "res", "avast"],
	["skype", "res", "res", "res", "browser", "res", "res", "res", "res"],
	["res", "res", "excel", "res", "res", "res", "res", "res", "telegram"],
	["basket", "res", "spell", "res", "spell", "res", "paint", "res", "res"] 
	]
