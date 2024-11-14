extends MeshInstance3D
var material = get_active_material(0) 
var parent = get_parent()
 
 
 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("asdfasdfasdfsadfsdfYXYYXY")
	
func _process(delta: float) -> void:

	var new_material = Material.new()
	 
	#self.material_override = new_material
	#self.material_override = preload("res://gatetrans.tres")
 	#self.material_override = preload("res://emptygate.tres")
	
	if GlobalTimer.takt > 0.5:
		#self.visible = false
		self.material_override = preload("res://emptygate.tres")
	
	if GlobalTimer.takt < 0.5:
		#self.visible = true
		self.material_override = preload("res://gatetrans.tres")
		
	
	


func _on_area_3d_area_entered(area: Area3D) -> void:
	parent = get_parent()
	print("collided with2")
	print(parent)
