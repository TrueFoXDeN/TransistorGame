extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _draw():
	draw_line(Vector2(100,0), Vector2(100,20),Color.RED, 2.0)
	draw_line(Vector2(80,20), Vector2(100,20),Color.RED, 2.0)
	draw_line(Vector2(80,20), Vector2(80,60),Color.RED, 2.0)
	draw_line(Vector2(80,60), Vector2(100,60),Color.RED, 2.0)
	draw_line(Vector2(100,60), Vector2(100,80),Color.RED, 2.0)
	draw_line(Vector2(75,20), Vector2(75,60),Color.RED, 2.0)
	draw_line(Vector2(67,40), Vector2(50,40),Color.RED, 2.0)
	draw_circle(Vector2(50,40), 3, Color.RED)
	draw_circle(Vector2(100,2), 3, Color.RED)
	draw_circle(Vector2(100,78), 3, Color.RED)
	draw_arc(Vector2(70,40),4, 0,360,15, Color.RED, 1.5)

