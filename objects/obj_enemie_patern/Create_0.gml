/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ
//Variáveis comuns (tributos)



life		= 1;
shake		= 1;
vel_max		= 1;

ped_min		= 1;
ped_max		= 2;
ped_vel_min	= 30;
ped_vel_max	= 40;
temp_min	= 1;
temp_max	= 2;

damage		= 1;
tk_damage	= false;
time_moviment = room_speed * random_range(temp_min, temp_max);

#region Comportamentos
//Não sair da tela;
room_limit = function()
{	//"Se eu der com a cara na parede, eu inverto a minha velocidade:|"
	if ( x - sprite_width/2 < 0 || x + sprite_width/2 > room_width)
	{
		hspeed *= -1;
	}
	if ( y - sprite_height/2 < 0 || y + sprite_height/2 > room_height)
	{
		vspeed *= -1;
	}
		image_angle = direction

}

lose_life = function(_damage)//Levar dano
{	

	//Se não houver valor para o dano, então seu valor será: 1
	if(_damage == undefined)
	{
		_damage = 1;
	}
	
	life -= _damage
	
	if(life <= 0)//"Se minha vida esgotar, então eu morro neh, dããã"
	{	
		chunks();
				
		instance_destroy();
		
		if(global.shake < shake ) global.shake = shake;
	}	

}

chunks = function()//explosão
{
	//Criando o rastro
	var _trace = instance_create_layer(x, y, "inimigos", obj_trace);	
	//Angulo aleatório para o rastro
	_trace.image_angle = random(359);
	
	var _qtd = random_range(ped_min, ped_max);

	repeat(_qtd)
	{
		var _chunk = instance_create_layer(x, y, "inimigos", obj_chunk);
		
		_chunk.speed		= random_range(ped_vel_min, ped_vel_max);

		_chunk.direction	= irandom(359);

		_chunk.image_angle	= _chunk.direction
		
		_chunk.tk_damage = tk_damage
	}
}

//Meu time para mudar o movimento
change_direction = function()
{
	time_moviment--;
	//"Se esgotar o tempo, eu troco de direção"	
	if(time_moviment < 0)
	{
		define_movimento();
		//Resetando o time;
		time_moviment = room_speed * random_range(temp_min, temp_max);
	}
}


define_movimento = function()
{

	speed		= random(vel_max);

	direction	= irandom(359);//direção aleatória

	image_angle	= direction;

}

define_movimento();


efeito_dano = function()
{
draw_self()
if(place_meeting(x, y, obj_fire))
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_enemie, image_index, x, y, image_xscale*1.2, image_yscale*1.2, image_angle, c_white, .7);	
	gpu_set_blendmode(bm_normal);
	
}
}

#endregion






















































