extends Area2D

var draggable = false

var offset: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if draggable:
		if Input.is_action_just_pressed("click"):
			Global.dragging = true
			offset = get_global_mouse_position() - global_position
		if Input.is_action_pressed("click"):
			global_position = get_global_mouse_position() - offset
		if Input.is_action_just_released("click"):
			Global.dragging = false


func _on_mouse_entered():
	if not Global.dragging:
		draggable = true
		var tween = get_tree().create_tween()
		tween.tween_property(self, "scale", Vector2(1.1, 1.1), 0.1).set_ease(Tween.EASE_OUT)



func _on_mouse_exited():
	draggable = false
	var tween = get_tree().create_tween()
	tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.1).set_ease(Tween.EASE_OUT)


func _on_gate_mouse_entered():
	print('gate entered')


func _on_gate_mouse_exited():
	print('gate exited')


func _on_source_mouse_entered():
	print('source entered')


func _on_source_mouse_exited():
	print('source exited')


func _on_drain_mouse_entered():
	print('drain entered')


func _on_drain_mouse_exited():
	print('drain exited')
