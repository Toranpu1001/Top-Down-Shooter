/// @description Insert description here
// Começa a codar. ᕦ⁠(⁠ò⁠_⁠ó⁠ˇ⁠)⁠ᕤ
tk_damage = false;

take_damage = function()
{	
	if(tk_damage)
	{	//checando se eu colidi com o inimigo
		var _take_damage = instance_place(x, y, obj_enemie_patern);
	
		if(_take_damage)
		{
			
			_take_damage.tk_damage = true;
			
			_take_damage.lose_life();
			
			instance_destroy()
		}
	}	
}





















































