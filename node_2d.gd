extends Node2D

var coin: int #Create Coin variable
var generator: int #Create Generator variable
@export var clicker_strength: int = 5 #Create Strength of Clicker (How many coins per click)
@onready var coin_label: Label = $Coin_Counter #Create Coin label (Dispalys how many coins user has)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coin = 0 #Inits coins to 0
	generator = 0 #Inits generators to 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_clicker_button_pressed() -> void:
	coin += clicker_strength #Adds 5 coins per click
	print(coin)
	$Coin_Counter.text = "Coins: " + str(coin) #Edits Label

func _on_generator_button_pressed() -> void:
	if (coin >= 50):
		generator += 1
		coin -= 50
		$Generator_Counter.text = "Generators: " + str(generator)
		$Coin_Counter.text = "Coins: " + str(coin) #Edits Label
		

func _on_timer_timeout() -> void:
	coin += generator * 3 # Adds 3 coins per generator per frame
	print("time")
	$Coin_Counter.text = "Coins: " + str(coin) #Edits Label
