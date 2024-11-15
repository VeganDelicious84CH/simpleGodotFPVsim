extends RigidBody3D



func _on_area_3d_area_entered(area: Area3D) -> void:
	print("contact")

func _on_area_3d_body_entered(body: Node3D) -> void:
	print("contact2")
