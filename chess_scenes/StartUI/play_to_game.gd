extends TouchScreenButton

var duration = .5  # The duration of the interpolation in seconds
var elapsed_time = 0
var starting_alpha = 0
var target_alpha = 1
var breath = false
var duration2 = .5
var elapsed_time_2 = 0
var config
func _ready():
	config = ConfigFile.new()
	var err = config.load("user://wins.cfg")
	
	config.set_value("tutorial", "has_played", true)
		
	config.save("user://wins.cfg")
		
func _on_pressed():
	get_tree().change_scene_to_file("res://chess_scenes/StartUI/start_ui.tscn")

