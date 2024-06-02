extends Node2D
var pmos_scene : PackedScene = preload("res://PMOS.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Add_PMOS.pressed.connect(self.on_pmos_click)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func on_pmos_click():
	print("PMOS Click")
	var pmos_instance = pmos_scene.instantiate()
	pmos_instance.position = Vector2(100, 100)
	add_child(pmos_instance)
