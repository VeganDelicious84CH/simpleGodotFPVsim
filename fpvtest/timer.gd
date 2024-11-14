extends Timer
var bus_idx = 0
var voldb = -80
var winkely = Input.get_axis("ui_up", "ui_down")
var takt = 0 
var tore: Array = []
var torecopy: Array = []
var torereset: Array = []
var sekunde = 0
var resetrace = "false"
var numberofgates = 0
var reset = 1
var counterstarted = false

func round_to_dec(num, digit):
	return round(num * pow(10.0, digit)) / pow(10.0, digit)
	

 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	AudioServer.set_bus_volume_db(bus_idx, voldb)
	if counterstarted == true:
		takt = takt + delta
	

	
		
	if takt >= 1:
		sekunde = sekunde + 1
		takt = takt - 1
		print(sekunde)
		#print(takt) 
		takt = round_to_dec(takt, 2)
		#print(takt)
		
	winkely = Input.get_axis("ui_up", "ui_down")
 
 

	if Input.is_action_pressed("ui_up"):
		winkely = Input.get_axis("ui_up", "ui_down")
		#print(winkely)
		winkely = 0 - winkely
	
	print(winkely)

	if winkely < 0.2  and voldb > -80:
		voldb = voldb - 1
	
	
		
	if winkely > 0.2:
		voldb = 2
		#print(winkely)
 
		
	if winkely > 0.3:
		voldb = 4
		#print(winkely)
	 
	if winkely > 0.4:
		voldb = 6
		#print(winkely)
	 
	if winkely > 0.5:
		voldb = 8
		
	if winkely > 0.6:
		voldb = 10
		
		
	if winkely > 0.7:
		voldb = 12
		
			
	if winkely > 0.8:
		voldb = 15
			
		
 
	if winkely > 0.9:
		voldb = 24
		print(voldb)
	 
 


func _on_audio_stream_player_finished() -> void:
	$"../AudioStreamPlayer".play()
