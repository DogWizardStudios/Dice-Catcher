class_name Fox

extends Area2D

@export var speed: float = 200

@onready var sprite_2d: Sprite2D = $Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var move: float = Input.get_axis("fox_left", "fox_right")
	print(Input.get_axis("fox_left", "fox_right"))
	
	#get_axis above outputs -1 for left and 1 for right, 0 for no input
	#as we move approx zero is false, so true because of ! so the sprite will flip 
	#as we stop moving zero aprox becomes true, then false because of !
	#so the code to run the sprite flip doesn't run
	#remembers the direction you were facing
	
	if !is_zero_approx(move):
		sprite_2d.flip_h = move > 0.0
	
	position.x += move * speed * delta
