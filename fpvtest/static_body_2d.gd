extends StaticBody2D


var winkely = float(0)
var winkelx = float(0)
var Lix = float(0)
var Liy = float(0)

#WinkelRy

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(winkely)
	#print(winkelx)

	
	if Input.is_action_pressed("ui_up"):
		winkely = Input.get_axis("ui_up", "ui_down")
		Liy = winkely / 2

	if Input.is_action_pressed("ui_down"):
		winkely = Input.get_axis("ui_up", "ui_down")
		Liy = winkely / 2
		
		
	if Input.is_action_pressed("ui_left"):
		winkelx = Input.get_axis("ui_left", "ui_right")
		Lix = winkelx / 2

	if Input.is_action_pressed("ui_right"):
		winkelx = Input.get_axis("ui_left", "ui_right")
		Lix = winkelx / 2
	
	$"../StaticBody2D/AussLi/StaticBody2D/InnLi".position = Vector2(Lix, Liy)
	 
	#$"../StaticBody2D2/AussRe/StaticBody2D/InnRe".position = Vector2(0.1, 0)	
