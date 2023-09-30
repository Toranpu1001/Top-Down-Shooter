/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ

event_inherited();

life		= 10;
//tremor de tela
shake		= 20;
//velocidade máxima
vel_max		= 2;
//pedaços de explosão
ped_min		= 40;
ped_max		= 50;
ped_vel_min	= 40;
ped_vel_max	= 60;
//time para mudar de direção
temp_min	= 10;
temp_max	= 20;

tk_damage	= true;
time_shock	= room_speed * random_range(temp_min, temp_max);

shock = function()
{
	time_shock--;
	
	if(time_shock <= 0)
	{	//criar ovo
		var _egg		= instance_create_layer(x,y, "inimigos", obj_egg);
		_egg.speed		= random(1);
		_egg.direction	= direction + 180
		time_shock		= room_speed * random_range(temp_min, temp_max)
	}
}
	


















































