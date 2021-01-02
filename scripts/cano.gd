extends Node2D

export var velocidadeCano = -400;
#está pegando toda a árvore do jogo e a cena atual
var cena;

func _ready():
	cena = get_tree().get_current_scene();
	set_process(true);
	
	
func _process(delta):
	if(cena.estado == cena.JOGANDO):
		set_pos(get_pos() + Vector2(velocidadeCano * delta, 0));
	
	if(get_pos().x < -100):
		queue_free();


func _on_Area2D_body_enter( body ):
	#se o body (corpo) que atingiu a nossa área for o pássaro então faça algo
	if(body.get_name() == "Felpudo"):
		cena.encerrarCena();
