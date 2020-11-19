extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var index = 0
var move = 740
var coins = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	if Console.isConsoleShown:
		Console.toggleConsole()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (index == 0):
		$shop/LeftButton.disabled = true
	else:
		$shop/LeftButton.disabled = false
	$shop/Coins/NbCoins.bbcode_text = "[b][right]%d[/right][/b]" % coins
	check_prices()
	


func _on_RightButton_pressed():
	$shop/RightBottonMap.position.x -= move
	$shop/UpBottonMap.position.x -= move
	$shop/LeftBottonMap.position.x -= move
	$shop/MoveCommands.position.x -= move
	$shop/TakeCommand.position.x -= move
	$shop/OpenCommand.position.x -= move
	$shop/DownBottonMap.position.x -= move
	$shop/OpenBotton.position.x -= move
	$shop/TakeBotton.position.x -= move
	$shop/Attack.position.x -= move
	index -= 1


func _on_LeftButton_pressed():
	$shop/RightBottonMap.position.x += move
	$shop/UpBottonMap.position.x += move
	$shop/LeftBottonMap.position.x += move
	$shop/MoveCommands.position.x += move
	$shop/TakeCommand.position.x += move
	$shop/OpenCommand.position.x += move
	$shop/DownBottonMap.position.x += move
	$shop/OpenBotton.position.x += move
	$shop/TakeBotton.position.x += move
	$shop/Attack.position.x += move
	index += 1
	
func check_prices():
	if ($shop/RightBottonMap.price > coins):
		$shop/RightBottonMap/CoinRight/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/RightBottonMap.price
		$shop/RightBottonMap/CoinRight.disabled = true
	else:
		$shop/RightBottonMap/CoinRight/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/RightBottonMap.price
		$shop/RightBottonMap/CoinRight.disabled = false

	if ($shop/UpBottonMap.price > coins):
		$shop/UpBottonMap/CoinUp/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/UpBottonMap.price
		$shop/UpBottonMap/CoinUp.disabled = true
	else:
		$shop/UpBottonMap/CoinUp/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/UpBottonMap.price
		$shop/UpBottonMap/CoinUp.disabled = false

	if ($shop/LeftBottonMap.price > coins):
		$shop/LeftBottonMap/CoinLeft/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/LeftBottonMap.price
		$shop/LeftBottonMap/CoinLeft.disabled = true
	else:
		$shop/LeftBottonMap/CoinLeft/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/LeftBottonMap.price
		$shop/LeftBottonMap/CoinLeft.disabled = false

	if ($shop/MoveCommands.price > coins):
		$shop/MoveCommands/CoinMove/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/MoveCommands.price
		$shop/MoveCommands/CoinMove.disabled = true
	else:
		$shop/MoveCommands/CoinMove/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/MoveCommands.price
		$shop/MoveCommands/CoinMove.disabled = false

	if ($shop/TakeCommand.price > coins):
		$shop/TakeCommand/CoinTake/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/TakeCommand.price
		$shop/TakeCommand/CoinTake.disabled = true
	else:
		$shop/TakeCommand/CoinTake/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/TakeCommand.price
		$shop/TakeCommand/CoinTake.disabled = false

	if ($shop/OpenCommand.price > coins):
		$shop/OpenCommand/CoinOpen/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/OpenCommand.price
		$shop/OpenCommand/CoinOpen.disabled = true
	else:
		$shop/OpenCommand/CoinOpen/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/OpenCommand.price
		$shop/OpenCommand/CoinOpen.disabled = false

	if ($shop/DownBottonMap.price > coins):
		$shop/DownBottonMap/CoinDown/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/DownBottonMap.price
		$shop/DownBottonMap/CoinDown.disabled = true
	else:
		$shop/DownBottonMap/CoinDown/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/DownBottonMap.price
		$shop/DownBottonMap/CoinDown.disabled = false

	if ($shop/OpenBotton.price > coins):
		$shop/OpenBotton/CoinOpenButton/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/OpenBotton.price
		$shop/OpenBotton/CoinOpenButton.disabled = true
	else:
		$shop/OpenBotton/CoinOpenButton/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/OpenBotton.price
		$shop/OpenBotton/CoinOpenButton.disabled = false

	if ($shop/TakeBotton.price > coins):
		$shop/TakeBotton/CoinTakeButton/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/TakeBotton.price
		$shop/TakeBotton/CoinTakeButton.disabled = true
	else:
		$shop/TakeBotton/CoinTakeButton/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/TakeBotton.price
		$shop/TakeBotton/CoinTakeButton.disabled = false

	if ($shop/Attack.price > coins):
		$shop/Attack/CoinAttack/Price.bbcode_text = "[b][right][color=#b20000]%d[/color][/right][/b]" % $shop/Attack.price
		$shop/Attack/CoinAttack.disabled = true
	else:
		$shop/Attack/CoinAttack/Price.bbcode_text = "[b][right][color=#0079b2]%d[/color][/right][/b]" % $shop/Attack.price
		$shop/Attack/CoinAttack.disabled = false


func _on_CoinRight_pressed():
	coins -= $shop/RightBottonMap.price
	$shop/RightBottonMap.taken = true


func _on_CoinUp_pressed():
	coins -= $shop/UpBottonMap.price
	$shop/UpBottonMap.taken = true


func _on_CoinLeft_pressed():
	coins -= $shop/LeftBottonMap.price
	$shop/LeftBottonMap.taken = true


func _on_CoinMove_pressed():
	coins -= $shop/MoveCommands.price
	$shop/MoveCommands.taken = true


func _on_CoinTake_pressed():
	coins -= $shop/TakeCommand.price
	$shop/TakeCommand.taken = true


func _on_CoinOpen_pressed():
	coins -= $shop/OpenCommand.price
	$shop/OpenCommand.taken = true


func _on_CoinDown_pressed():
	coins -= $shop/DownBottonMap.price
	$shop/DownBottonMap.taken = true


func _on_CoinOpenButton_pressed():
	coins -= $shop/OpenBotton.price
	$shop/OpenBotton.taken = true


func _on_CoinTakeButton_pressed():
	coins -= $shop/TakeBotton.price
	$shop/TakeBotton.taken = true


func _on_CoinAttack_pressed():
	coins -= $shop/Attack.price
	$shop/Attack.taken = true
