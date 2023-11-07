extends Node

var player
var day
var score_user
var score_hacker
var count_tasks = {1: 3, 2: 4, 3: 5}
var completedTasks_user = 0
var completedTasks_hacker = 0

var max_icons = 10
var max_side_icons = 6

# Called when the node enters the scene tree for the first time.
func _ready():
	day = 1
	score_user = 0
	score_hacker = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if day == 3 and score_hacker > score_user or day == 2 and score_hacker == 2:
		pass
	elif day == 3 and score_hacker < score_user or day == 2 and score_user == 2:
		pass
