extends Node

var player
var user
var hacker
var day
var score_user
var score_hacker
var count_tasks = {1: 4, 2: 5, 3: 6}
var user_tasks = [
	"Скачать браузер Амиго в Microsoft Internet Explorer",
	"Скачать и создать почту Mail.ru",
	"Занести данные клиента в таблицу Excel",
	"Проверить электронную почту",
	"Написать отчет и отправить начальнику",
	"Поработать в 1С.Бухгалтерия",
	"Поздравить коллегу с ДР в ОК",
	"Проверить Telegram",
	"Нарисовать открытку маме в Paint",
	"Обработать фото кошки в гимпе",
	"Посмотреть анкеты в «Дай винчике»",
	"Оплатить лицензию WinRar",
	"Обновить корзину до новой версии",
	"Проверить пк на вирусы в Avast",
	"Позвонить маме в скайп",
	"Очистить корзину"
]
var hacker_tasks = [
	"Внедрение вредоносных скриптов в сайты",
	"Распространение вредоносного по",
	"Украсть корпоративные данные из таблиц",
	"Отправка фишинговых писем через почту",
	"Закинуть файл с вредоносным макросом.",
	"Бомбер сотрудников.",
	"Поставить «единички» коллегам",
	"Взломать аккаунт в Телеграм",
	"Подменить открытку маме",
	"Подменить метаданные фото кошки",
	"Украсть компромат в Телеграм",
	"Запаролить все архивы",
	"Добавить бэкдор корзины",
	"Помешать работе антивируса",
	"Получить доступ к вебке",
	"Заполучить данные корзины"
]
var completedTasks_user = 0
var completedTasks_hacker = 0
var card_pressed = false
var index_current_card = 0
var items_user = [
	"res://sprites/iconshack/ddos.png",
	"res://sprites/iconklerk/firewall.png",
	"res://sprites/iconklerk/strong pass.png"
]
var items_hacker = [
	"res://sprites/iconshack/ddos.png",
	"res://sprites/iconshack/fishing.png",
	"res://sprites/iconshack/sql ink.png",
	"res://sprites/iconshack/troyan.png"
]
var items_user_inventory = [null, null, null, null , null, null]
var items_hacker_inventory = [null, null, null, null , null, null]
var gamemap
var ref_cards_user = []
var ref_cards_hacker = []
var max_icons = 10
var max_side_icons = 6
var current_card_pressed = null
var bytes
var go_right

# Called when the node enters the scene tree for the first time.
func _ready():
	_init_map()
	day = 1
	score_user = 0
	score_hacker = 0
	
	bytes = 0
	user = Vector2(0, 0)

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
