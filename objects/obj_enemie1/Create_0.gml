/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ

event_inherited();


distancia_minima	= 250;//para seguir o player

life		= 1;
shake		= 10;

//velocidade máxima
vel_max		= 2;
ped_min		= 5;
//pedaços de explosão
ped_max		= 10;
//time para mudar de direção
temp_min	= 5;
temp_max	= 10;


follow = function()
{
	if(instance_exists(obj_player))
	{	//Pegando a distância.
		var _distance = point_distance(x, y, obj_player.x, obj_player.y);
		//"Se o player tiver próximo, eu vou seguir ele. Não chega perto man >:("
		if(_distance < distancia_minima)
		{
			var _dir = point_direction(x, y, obj_player.x, obj_player.y);
			
			direction = _dir
		}
	}
}























































