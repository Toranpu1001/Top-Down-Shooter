/// @description Insert description here
// You can write your code in this editor
life				= 3;
image_index			= 2;
alpha_val			= 0.05;
delay				= 15;//delay de tiro
invencible			= false;
cooldown_invencible	= room_speed * 3;
invencilbe_duration	= cooldown_invencible 

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
		//Se eu não estou atirando a sprite fica normal;
		if(!_shot)sprite_index = spr_player
		//Se eu estou atirando mude a sprite;
		else sprite_index = spr_shooting
	
		
	show_debug_message(delay)
	image_angle = _dir//Fazendo o player olhar para a direção dou mouse;
}

lose_life = function()
{
	var _inimigo = instance_place(x, y, obj_enemie_patern);
	
	if(_inimigo)
	{
		
		if(!invencible)
		{//Se o jogador não estiver piscando e não invencivel, reduza sua saúde e faça-o piscar
			
			life				-= _inimigo.damage;
				
			invencible			 = true;
			//o tempo de piscar será o mesmo tempo de invencibilidade
		
			invencible_duration	 = cooldown_invencible;
		}	
	}
	if(invencible)
	{// Se o jogador estiver piscando, alterne a visibilidade
		show_debug_message(alpha_val);
		image_alpha += alpha_val;
		
		if(image_alpha > 1 || image_alpha < 0) alpha_val *= -1
	
		invencible_duration	-= 1;//Diminua o tempo de invencibilidade
		
		if(invencible_duration <=0)
		{//Se o tempo de invencibilidade chegar a zero ou menos, faça ele não piscar mais e se tornar vencivel;
				
			invencible		 = false;
			
			image_alpha		 = 1;
		}
	}
		
	if (life < 0)
	{
		instance_destroy();
	}
	
}














































