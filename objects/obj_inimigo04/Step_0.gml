/// @description Código base

if instance_exists(obj_player){
	randomize();  //Randomiza a direção e angulo
	direction = point_direction(x, y,random_range(obj_player.x - 10, obj_player.x + 10), random_range(obj_player.y - 10, obj_player.y + 10));  //Direção do inimigo
	image_angle = point_direction(x, y,random_range(obj_player.x - 10, obj_player.x + 10), random_range(obj_player.y - 10, obj_player.y + 10)) + 90; //Angulo do inimigo
}
