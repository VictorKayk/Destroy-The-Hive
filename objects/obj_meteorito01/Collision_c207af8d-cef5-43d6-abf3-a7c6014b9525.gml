/// @description Se colidir com o player

instance_destroy();  //Destroi o meteoro

if instance_exists(obj_player){
	obj_player.vida--;
}
