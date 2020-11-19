extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Console.toggleConsole()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event is InputEventKey:
		if (event as InputEventKey).scancode == KEY_ESCAPE:
			Global.last_scene = "res://Scenes/Games/TutorialRegion/Tutorial.tscn"
			Global.goto_scene("res://Scenes/Menu/Pause.tscn")
