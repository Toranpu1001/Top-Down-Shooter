/// @description Insert description here
// You can write your code in this editor

image_index = 2;

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
		image_speed = 1;
	}
	else
	{
		image_speed = 0
		image_index = 2
	}
	show_debug_message(_velv)
	show_debug_message(_velh)
}
fire = function()
{
	//Pegando a direção do player em correlação com o mouse;
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	
	image_angle = _dir//Fazendo o player olhar para a direção dou mouse;
}













































