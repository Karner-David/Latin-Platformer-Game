key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_jump2 = keyboard_check_pressed(vk_up);

var move = key_right - key_left;

hsp = move * walkspd;
vsp = vsp + grv;

if ((place_meeting(x,y+1, oPlatform)) and (key_jump) or (key_jump2) and place_meeting(x,y+1, oPlatform))
{
	vsp = -7;
	
}

if (place_meeting(x+hsp, y, oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if (place_meeting(x, y+vsp, oPlatform))
{
	while (!place_meeting(x,y+sign(vsp),oPlatform))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;





