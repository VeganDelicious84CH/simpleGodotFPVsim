extends Label
var withhoutzero = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	withhoutzero = str(GlobalTimer.takt)
	withhoutzero = withhoutzero.replace('0.', '')
	
	text = "Sek: "+ str(GlobalTimer.sekunde) + ":" + str(withhoutzero)
	
	
