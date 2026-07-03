extends Node

@export var dice_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_dice()

func spawn_dice() -> void:
	var new_dice: Dice = dice_scene.instantiate()
	add_child(new_dice)


func _on_spawn_timer_timeout() -> void:
	spawn_dice()
