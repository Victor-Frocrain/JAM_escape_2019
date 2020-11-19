extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var price = 1
var taken = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func should_show_button() -> bool:
	if (position.x < -1375 || position.x > 1000):
		return false
	return true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	visible = should_show_button()
	if (taken == true):
		$CoinOpenButton.visible = false
		$Accepted.visible = true
	else:
		$CoinOpenButton.visible = true
		$Accepted.visible = false
