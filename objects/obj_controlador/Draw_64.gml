/// @description Informações na tela

draw_set_font(fnt_fonte);  //fonte

draw_text(20, 25, "Orbs: " + string(pontos));  //Informa os pontos do jogador na tela
if instance_exists(obj_player){
	draw_text(20, 50, "Vida: " + string(obj_player.vida));  //Informa a vida do jogador na tela
	if obj_player.escudo or level >= 6{
		draw_text(20, 100, "Durabilidade: " + string(obj_player.durab));
	}
}
else{
	draw_text(20, 50, "Vida: 0");  //Informa a vida do jogador na tela
	if level >= 6{
		draw_text(20, 100, "Durabilidade: 0");
	}
}
draw_text(20, 75, "Level: " + string(level));  //Informa o level do jogador na tela

if instance_exists(obj_boss){
	draw_text(550, 25, "Vida do boss: " + string(obj_boss.vida));
}
else{
	if level == 10{
		draw_text(550, 25, "Vida do boss: 0");
	}
}
