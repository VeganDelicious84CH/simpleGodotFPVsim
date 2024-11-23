extends StaticBody2D

var Rex = float(0)
var Rey = float(0)
var winkelRy = float(0)
var winkelRx = float(0)


#WinkelRy

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	if Input.is_action_pressed("StickRightUp"):
		winkelRy = Input.get_axis("StickRightUp", "StickRightDown")
		Rey = winkelRy / 2

	if Input.is_action_pressed("StickRightDown"):
		winkelRy = Input.get_axis("StickRightUp", "StickRightDown")
		Rey = winkelRy / 2
		
		
 	
	if Input.is_action_pressed("StickRightLeft"):
		winkelRx = Input.get_axis("StickRightLeft", "StickRightRight")
		Rex = winkelRx / 2
 
	
	if Input.is_action_pressed("StickRightRight"):
		winkelRx = Input.get_axis("StickRightLeft", "StickRightRight")
		Rex = winkelRx / 2
 




	
	$"../StaticBody2D2/AussRe/StaticBody2D/InnRe".position = Vector2(Rex, Rey)
	 
	#$"../StaticBody2D2/AussRe/StaticBody2D/InnRe".position = Vector2(0.1, 0)	
