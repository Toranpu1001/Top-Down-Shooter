/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ


global.shake = 0;

shake = function()
{
	view_xport[0] = irandom_range(-global.shake, global.shake);
	view_yport[0] = irandom_range(-global.shake, global.shake);

	global.shake *= .95

	if(global.shake > 0)
	{
		global.shake *= .95
	
		if(global.shake <= .1) global.shake = 0;
	}
}





















































