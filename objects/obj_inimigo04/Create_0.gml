/// @description Variáveis base

randomize();  //Randomiza 

if instance_exists(obj_player){
	direction = point_direction(x, y, obj_player.x, obj_player.y);  //Direção do inimigo
}
else{
	direction = 270;
}
speed = random_range(3, 7);  //Velocidade do inimigo
