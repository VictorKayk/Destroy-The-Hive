/// @description Código base

if instance_exists(obj_player){
	direction = point_direction(x, y, obj_player.x, obj_player.y);  //Aproxima a orb do player em um número aleatorio
	speed = 7;
}
