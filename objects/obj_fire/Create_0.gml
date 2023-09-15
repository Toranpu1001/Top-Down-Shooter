/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ

speed			= 0;

damage			= 1

time_life		= room_speed * 6

shake			= 2;

image_xscale	= 2.5;
image_yscale	= 2;

efeito_tamanho = function()
{
	image_xscale = lerp(image_xscale, 1, 1);
	image_yscale = lerp(image_yscale, 1, 1);
}

efeito_tiro = function()
{
	draw_self();
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(spr_efeito, 0, x, y, image_xscale*1.1, image_yscale*1.1, image_angle, c_red, 0.9);
	gpu_set_blendmode(bm_normal);
	
}
destroy = function()
{
	if(time_life >= 0) time_life--;
	if(time_life <= 0) instance_destroy();	
}

colision_enemie = function()
{	//armazenando que inimigo eu vou dar tal pipoco
	var _inimigo = instance_place(x, y, obj_enemie1);
	
	if(_inimigo)
	{
		_inimigo.lose_life(damage);
	
		//Me destruindo após colidir
		instance_destroy();
		
		instance_create_layer(x, y, "inimigos", obj_boom);
		
		if(global.shake < shake ) global.shake = shake;
	}
}












































