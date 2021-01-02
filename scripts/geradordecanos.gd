extends Position2D

#quando estiver pronto significa o onready
onready var cano = preload("res://scenes/Cano.tscn");

func _ready():
	randomize();
