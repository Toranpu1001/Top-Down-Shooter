/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ
cooldown			= room_speed * irandom_range(10, 20);

time_moviment		= cooldown;//tempo para mudar de direção

distancia_minima	= 0;//para seguir o player

life = 0;

shake = 0;

define_movimento	= function()
{

	speed		= irandom_range(1, 4);

	direction	= irandom(359);//direção aleatória

	image_angle	= direction;

}

define_movimento();

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

change_direction = function()
{
	time_moviment--;
	//"Se esgotar o tempo, eu troco de direção"	
	if(time_moviment < 0)
	{
		define_movimento();
		
		time_moviment = cooldown;
	}
}

///@method lose_life(value_damage);
lose_life = function(_damage)
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
chunks = function()
{

	var _qtd = random_range(5 ,10);
	repeat(_qtd)
	{
		var _chunk = instance_create_layer(x, y, "inimigos", obj_chunk);
		var _trace = instance_create_layer(x, y, "inimigos", obj_trace);	
		
		_chunk.speed		= random_range(10, 20);

		_chunk.direction	= irandom(359);

		_chunk.image_angle	= _chunk.direction
		
	}
}


















































