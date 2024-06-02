extends Node2D
var pmos_scene : PackedScene = preload("res://PMOS.tscn")
var nmos_scene : PackedScene = preload("res://NMOS.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

	


func _on_add_pmos_pressed():
	print("PMOS Click")
	var pmos_instance = pmos_scene.instantiate()
	pmos_instance.position = Vector2(100, 100)
	add_child(pmos_instance)


func _on_add_nm_os_pressed():
	print("NMOS Click")
	var nmos_instance = nmos_scene.instantiate()
	nmos_instance.position = Vector2(100, 100)
	add_child(nmos_instance)
