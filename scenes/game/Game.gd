extends Node

@export var dice_scene: PackedScene
@onready var score_label: Label = $ScoreLabel

var _score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_dice()

func spawn_dice() -> void:
	var new_dice: Dice = dice_scene.instantiate()
	add_child(new_dice)


func _on_spawn_timer_timeout() -> void:
	spawn_dice()


func _on_fox_eaten_dice() -> void:
	_score += 1
	#score_label.text = str(_score).pad_zeros(4)
	score_label.text = "%04d" % _score
