
extends Reference

func _init():
	Console.addCommand('commands', Console._rootGroup, 'printAll')\
		.setDescription('Lists all available commands.')\
		.register()

	Console.addCommand('help', self)\
		.setDescription('Outputs usage instructions.')\
		.addArgument('command', TYPE_STRING)\
		.register()

	Console.addCommand('exit', self)\
		.setDescription('Exit application.')\
		.register()

	Console.addCommand('clear', Console)\
		.setDescription('Clear the terminal.')\
		.register()

	Console.addCommand('menu', self)\
		.setDescription('Go back to the menu.')\
		.register()

	Console.addCommand('pause', self)\
		.setDescription('pause the game.')\
		.register()

	Console.addCommand('shop', self)\
		.setDescription('Open the shop.')\
		.register()

	Console.addCommand('Up', self)\
		.setDescription('Go up.')\
		.register()

	Console.addCommand('Down', self)\
		.setDescription('Go down.')\
		.register()

	Console.addCommand('Left', self)\
		.setDescription('Go to the left.')\
		.register()

	Console.addCommand('Right', self)\
		.setDescription('Go to the right.')\
		.register()

	Console.addCommand('forty_two', self)\
		.setDescription('Giving 42 golds.')\
		.register()

#   All function Commands

static func help(command = null):
	if command:
		command = Console.getCommand(command)
		if !command:
			Console.Log.warn('No such command.')
			return
		command.describe()
	else:
		Console.writeLine(\
			"Type [color=#ffff66][url=help]help[/url] <command-name>[/color] show information about command.\n" + \
			"Type [color=#ffff66][url=commands]commands[/url][/color] to get a list of all commands.\n" + \
			"Type [color=#ffff66][url=exit]exit[/url][/color] to exit the application.")

static func menu():
	Global.goto_scene("res://Scenes/Menu/Main_Menu.tscn")

static func pause():
	#Global.last_scene = get_tree().edited_scene_root.get_scene().get_path()
	#Global.goto_scene("res://Scenes/Menu/Pause.tscn")
	Console.writeLine("Pause the game");

static func shop():
	Console.writeLine("Open shop");

static func Left():
	Console.writeLine("Go to left");

static func Right():
	Console.writeLine("Go to right");

static func Up():
	Console.writeLine("Go up");

static func Down():
	Console.writeLine("Go down");

static func forty_two():
	Console.writeLine("Giving gold...");

static func exit():
	Console.Log.warn('Quitting application...')
	Console.get_tree().quit()
