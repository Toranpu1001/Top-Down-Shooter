/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ
global.level = 1

global.life = 3;

time_room = room_speed * 2;
randomize();
room_start = function()
{

	
	var _background = choose(spr_background1, spr_background2, spr_background3);
	//Pegando o id da camada
	var _lay_id		= layer_get_id("Background");
	//Pegando o background da camada 
	var _back_id	= layer_background_get_id(_lay_id);
	//Trocando a camda do bacckground
	layer_background_change(_back_id, _background);
	
	//deixando a room aleatória
	var _widht		= irandom_range(2000, 5000);
	var _height		= irandom_range(2000, 5000);

	room_height		= _height;
	room_width		= _widht;
	
	var _x = irandom_range(0 + 100, room_width - 100);
	var _y = irandom_range(0 + 100, room_height - 100);

if(!instance_exists(obj_screenshake))
	{//Criando o screenshake
		instance_create_layer(0, 0, "player", obj_screenshake);
	}
if(!instance_exists(obj_player))
	{//Criando o player
		instance_create_layer(_x, _y, "player", obj_player);
	}
	
	creat_enemies();

}

creat_enemies = function()
{	
	
	var _qtd = irandom_range(3, 7) * global.level;
	
			repeat(_qtd)
			{
				var _x = irandom_range(0 + 100, room_width - 100);
				var _y = irandom_range(0 + 100, room_height - 100);
				//Instanciando o inimigo
				var _inimigo = instance_create_layer(_x, _y, "player", obj_enemie2);
			
			if(instance_exists(obj_player))
			{
				//pegando a distancia do inimigo para o player
				var _dist	= point_distance(_inimigo.x, _inimigo.y, obj_player.x, obj_player.y)  
				//se a distancia for curta, eu mato o inimigo
				if(_dist < 250)
				{	
					instance_destroy(_inimigo, false);
				}
			}
		
			}
}

prox_lvl = function()
{
	var _qtd_enemies = instance_number(obj_enemie2)
	//Se não houver mais inimigos grandes...Prox level.
	if(_qtd_enemies <= 0) 
	{
		time_room--;
		
		if(time_room <= 0)
		{
			global.level++;
			
			room_restart();
			
			time_room = room_speed * 2;
		}
}
}




















































