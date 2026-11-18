if keyboard_check(vk_up)
{
	motion_add(image_angle,0.1);
}
if keyboard_check(vk_left)
{
image_angle += 4;
}
if keyboard_check(vk_right)
{
image_angle -= 4;
}

move_wrap(true, true, 0);

if mouse_check_button_pressed(mb_left)
{
	
	var tip_x = x + lengthdir_x(18, image_angle);
	var tip_y = y + lengthdir_y(18, image_angle);
	
	var b = instance_create_layer(tip_x, tip_y, "Instances", bullet);
	b.direction = image_angle;
	b.image_angle = image_angle;
	b.speed = 10;
}
