extends RigidBody2D

func _ready():
	#monitorando o input
	set_process_input(true);
	get_node("../SomFundo").play();
	
func _input(event):
	if(event.is_action_pressed("touch")):
		ao_clicar();

#aplicando impulso pra cima, no y de -200 pra ir pra cima
func ao_clicar():
	apply_impulse(Vector2(0, 0), Vector2(0, -400));