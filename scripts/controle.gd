extends Node2D

#controla todo o jogo

onready var felpudo = get_node("Felpudo");
onready var background = get_node("Background");
onready var timerGameNode = get_node("TimerGameNode");

var pontos = 0;
var estado = 1;

const JOGANDO = 1;
const PERDENDO = 2;


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func encerrarCena():
	felpudo.apply_impulse(Vector2(0,0), Vector2(-1000, 0));
	background.stop();
	estado = PERDENDO;
	timerGameNode.start();
	
	


func _on_TimerGameNode_timeout():
	get_tree().reload_current_scene();
