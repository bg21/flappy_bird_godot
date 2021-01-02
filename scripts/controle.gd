extends Node2D

#controla todo o jogo

onready var felpudo = get_node("Felpudo");
onready var background = get_node("Background");
onready var timerGameNode = get_node("TimerGameNode");
onready var labelMostraPontos = get_node("Node2D/Control/MostraPontos");

var pontos = 0;
var estado = 1;

const JOGANDO = 1;
const PERDENDO = 2;


func _ready():
	get_node("SomFundo").play();

func encerrarCena():
	felpudo.apply_impulse(Vector2(0,0), Vector2(-1000, 0));
	get_node("SomBateu").play();
	background.stop();
	estado = PERDENDO;
	timerGameNode.start();
	
	
func pontuar():
	pontos += 1;
	labelMostraPontos.set_text(str(pontos));
	get_node("SomPontos").play();
	

func _on_TimerGameNode_timeout():
	get_tree().reload_current_scene();
