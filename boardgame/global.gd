extends Node

var player
var day
var score_user
var score_hacker
var count_tasks = {1: 3, 2: 4, 3: 5}
var completedTasks_user = 0
var completedTasks_hacker = 0
var card_pressed = false
var index_current_card = 0
var items_user = [
	"res://sprites/sprite/iconetxt.png",
	"res://sprites/sprite/iconetxt.png",
	"res://sprites/sprite/iconetxt.png"
]
var items_hacker = [
	"res://sprites/sprite/iconetxt.png",
	"res://sprites/sprite/iconetxt.png",
	"res://sprites/sprite/iconetxt.png"
]
var items_user_inventory = [null, null, null, null , null, null]
var items_hacker_inventory = [null, null, null, null , null, null]
var gamemap
var ref_cards_user = []
var ref_cards_hacker = []
var max_icons = 10
var max_side_icons = 6
var current_card_pressed = null

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
