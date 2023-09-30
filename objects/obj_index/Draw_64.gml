/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ


if(instance_exists(obj_player) && instance_exists(obj_enemie2))
{
	
	with(obj_player)
	{
		var _prox = instance_nearest(x, y, obj_enemie2);
		var _dir = point_direction(x, y, _prox.x, _prox.y);
		
		var _meu_x = camera_get_view_width(view_camera[0] / 2)
		
		draw_sprite_ext(spr_arrow, 0, _meu_x / 2, 100, 1, 1, _dir, c_white, 1);
		
	}
}

























































