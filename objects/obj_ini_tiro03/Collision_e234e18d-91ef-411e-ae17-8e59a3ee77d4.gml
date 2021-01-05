/// @description Se colidir com o escudo

instance_destroy(other);  //Destroi o escudo

if obj_player.defendendo{
	obj_player.durab = 0;  //Diminui a durabilidade do escudo para 0
}
