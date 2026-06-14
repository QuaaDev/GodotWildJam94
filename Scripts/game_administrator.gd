extends Node
#Made By Quaa
@export var new_game_button : Button
@export var load_button : Button
@export var options_button : Button
@export var exit_button : Button
@export var scene_to_load : String

func _ready() -> void:
	connect_signals()


func connect_signals() -> void:
	new_game_button.connect("pressed",new_game_pressed)
	load_button.connect("pressed",load_pressed)
	options_button.connect("pressed",options_pressed)
	exit_button.connect("pressed",exit_pressed)


#------Signals--------
func new_game_pressed() -> void:
	print("new game")
	var new_scene = load(scene_to_load).instantiate()
	self.add_child(new_scene)
	get_node("MainMenu").visible = false
func load_pressed() -> void:
	print("load")
func options_pressed() -> void:
	print("options")
func exit_pressed() -> void:
	print("exit")
	get_tree().quit()
#------Signals--------
