extends RayCast3D
var positionnew = 0
var positionold = 0
var positionorigin = 0
var positionisnew = true
 
 
func _ready() -> void:
	positionorigin = $"..".position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	 
	positionold = positionnew

 
	if positionisnew == true:
		positionold = $"..".position
		positionisnew = false
		
 
	positionnew = $"..".position
 
	
	print(GlobalTimer.counterstarted)
	if GlobalTimer.counterstarted == false:
		$"../../Node3D/Area3Dstart".visible = true


	var space_state = get_world_3d().direct_space_state
	var origin = positionnew
	var end = positionold
	var query = PhysicsRayQueryParameters3D.create(origin, end)
	var result = space_state.intersect_ray(query)

	if result:
		print("leer")
		$"..".freeze = true
		positionnew = positionold
		$"..".position = positionold
		$"../CollisionShape3D2".scale = Vector3(1, 20, 1)
		$"..".freeze = false
		
		if Input.is_action_pressed("ui_text_indent"):
			$"..".position = positionorigin
			positionold = positionorigin
			positionnew = positionorigin
	else:
						
		$"..".apply_impulse(($"..".global_transform.basis.y * ((-GlobalTimer.realspeedray ) * -10)) * (delta / 5))		
		$"../CollisionShape3D2".scale = Vector3(1, 1, 1)
		$"../Rotor1".rotate_y(GlobalTimer.winkely * (20 * delta))
		$"../Rotor3".rotate_y(-GlobalTimer.winkely * (20 * delta))
		$"../Rotor2".rotate_y(GlobalTimer.winkely * (20 * delta))
		$"../Rotor4".rotate_y(-GlobalTimer.winkely * (20 * delta))
		
		
		
		
		print(GlobalTimer.reset)
		
	if is_colliding():
		print("RAYCAST")
		
		print(GlobalTimer.raycasthit)
	else:
		
		$"../CollisionShape3D".scale = Vector3(1, 1, 1) 
		
		
		$"..".axis_lock_angular_x = false
		$"..".axis_lock_angular_y = false
		$"..".axis_lock_angular_z = false
		
	var distanz = positionnew.distance_to(positionold)
		 
	var colshapemultiplicator: int = distanz / 0.05
	if colshapemultiplicator > 1:
		$"../CollisionShape3D".scale = Vector3(1, colshapemultiplicator, 1)
	else:
		$"../CollisionShape3D".scale = Vector3(1, 1, 1)
		print($"../CollisionShape3D".scale)
 
