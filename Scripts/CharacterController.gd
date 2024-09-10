extends Node3D

@export var moveSpeed: float = 1.5 # meters / second
@export var rotateSpeed: float = 1.0 # radians / second

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("MoveForward"):
		position += get_global_transform().basis.z * moveSpeed * delta
	if Input.is_action_pressed("MoveBackward"):
		position -= get_global_transform().basis.z * moveSpeed * delta
	if Input.is_action_pressed("MoveLeft"):
		rotation.y += rotateSpeed * delta
	if Input.is_action_pressed("MoveRight"):
		rotation.y -= rotateSpeed * delta
