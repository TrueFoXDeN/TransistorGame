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
			offset = get_global_mouse_position() - global_position
		if Input.is_action_pressed("click"):
			global_position = get_global_mouse_position() - offset
		
			
	queue_redraw()

func _draw():
	draw_line(Vector2(25,-40), Vector2(25,-20), Color.RED, 2.0)
	draw_line(Vector2(5,-20), Vector2(25,-20), Color.RED, 2.0)
	draw_line(Vector2(5,-20), Vector2(5,20), Color.RED, 2.0)
	draw_line(Vector2(5,20), Vector2(25,20), Color.RED, 2.0)
	draw_line(Vector2(25,20), Vector2(25,40), Color.RED, 2.0)
	draw_line(Vector2(0,-20), Vector2(0,20), Color.RED, 2.0)
	draw_line(Vector2(-8,0), Vector2(-25,0), Color.RED, 2.0)
	draw_circle(Vector2(-25,0), 3, Color.RED)
	draw_circle(Vector2(25,-38), 3, Color.RED)
	draw_circle(Vector2(25,38), 3, Color.RED)
	draw_arc(Vector2(-5,0), 4, 0, 360, 15, Color.RED, 1.5)




func _on_mouse_entered():
	draggable = true
	var tween = get_tree().create_tween()
	tween.tween_property(self, "scale", Vector2(1.1, 1.1), 0.1).set_ease(Tween.EASE_OUT)



func _on_mouse_exited():
	draggable = false
	var tween = get_tree().create_tween()
	tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.1).set_ease(Tween.EASE_OUT)

