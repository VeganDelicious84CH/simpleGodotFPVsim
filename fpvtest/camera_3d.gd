extends Camera3D

 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_text_scroll_up"):
		#print("hallo")
		rotate_object_local(Vector3(1, 0, 0), (0.01))
		 
		 
		
		


	if Input.is_action_pressed("ui_text_scroll_down"):
		#print("hallo")
		rotate_object_local(Vector3(-1, 0, 0), (0.01))
		
			
			
