/// @description Insert description here
// You can write your code in this editor

image_index = 2;
delay = 15
move = function()
{	
	var _velh, _velv, _vel;
	
	_vel = 5; //Definindo a velocidade;
	
	//Pegando o input do Usuário
	_velh = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	_velv = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	x += _velh*_vel;//Alterando o eixo horizontal;
	y += _velv*_vel;//Alterando o eixo vertical;
	
	if(_velv != 0 || _velh != 0)
	{
		vimage_speed = 1;
	}
	else
	{
		image_speed = 0
		image_index = 2
	}
	
}
fire = function()
{

	
	//Pegando a direção do player em correlação com o mouse;
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	//Checando se o player está apertando o botão
	var _shot = mouse_check_button(mb_left)
	
	//Definindo o delay para os tiros
	if(delay > 0) delay--;

	if(_shot && delay <= 0)
	{	
		var _fire = instance_create_layer(x , y , "tiros", obj_fire);
		_fire.direction		= _dir
		_fire.image_angle	= _dir
		_fire.speed			= 20
		
		delay = 15;
	}
	show_debug_message(delay)
	image_angle = _dir//Fazendo o player olhar para a direção dou mouse;
}













































