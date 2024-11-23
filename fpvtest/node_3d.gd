extends Node3D
var tor1 = "test"
var tor2 = "est2"
var collider = ""
 



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
#GlobalTimer.tore	
	self.name = "GATE"
	GlobalTimer.numberofgates = GlobalTimer.numberofgates + 1
	#print(GlobalTimer.tore) 
	
	GlobalTimer.torecopy.append_array([self])
	
	
	#print(GlobalTimer.tore.find(self))
	
	#if self in tore:
	#if GlobalTimer.tore.has(self):
	#	print("falsch")
		
	 
	
	#print(GlobalTimer.tore)
	if GlobalTimer.tore.has(self):
		print("falsch2")
		
	
		
	#GlobalTimer.tore.erase(self)	
	#print(GlobalTimer.tore)
	if len(GlobalTimer.tore) == 0:
		print("LEER")
		
		
		

		


func _on_tor_2_body_entered(body: Node3D) -> void:
	#print(self)
	self.visible = false
	GlobalTimer.tore.erase(self)
	
 

	
func _physics_process(delta: float) -> void:
	if len(GlobalTimer.tore) == 0:
		self.visible = true
		$"../Node3D".visible = false
		GlobalTimer.counterstarted = false
		
		if GlobalTimer.reset == 1:
			$"../Node3D".visible = true

	if GlobalTimer.tore == GlobalTimer.torecopy:
		self.visible = true
		$"../Node3D".visible = false
