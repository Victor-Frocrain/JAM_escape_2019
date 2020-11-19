extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayButton_pressed():
	if Global.isPlayed == false:
		Global.goto_scene("res://Scenes/Games/TutorialRegion/Tutorial.tscn")
	if Global.isPlayed == true:
		Global.goto_scene("res://Scenes/Menu/InterGame.tscn")
	Global.isPlayed = true
