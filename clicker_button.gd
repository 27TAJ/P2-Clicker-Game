extends Control

var coin: int
@export var clicker_strength: int
@onready var coin_label: Label = $CoinLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coin = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#Receiver function for clicker button
func _on_button_down() -> void:
	#print("hi")
	coin += clicker_strength
	$CoinLabel.text = "Coin: " + str(coin)
	print(coin)

func _on_clicker_button_pressed() -> void:
	coin += clicker_strength
	$CoinLabel.text = "Coin: " + str(coin)
	print(coin)



func _on_upgrade_button_pressed() -> void:
	print("upgrade pressed")
	
	clicker_strength = clicker_strength * 2
