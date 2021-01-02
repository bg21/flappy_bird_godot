extends Node2D

export var velocidadeCano = -400;
func _ready():
	set_process(true);
	
	
func _process(delta):
	set_pos(get_pos() + Vector2(velocidadeCano * delta, 0));
	if(get_pos().x < -100):
		queue_free();
