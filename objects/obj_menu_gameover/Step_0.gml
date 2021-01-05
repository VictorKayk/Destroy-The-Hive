/// @description Código base

//Efeito do "Menu"
if sumindo == true and trans >= 0.1{  //Diminui a trasparencia do draw, se ele estiver sumindo
	trans -= 0.01;
	draw_set_alpha(trans);
}
if aparecendo == true and trans <= 1{  //Aumenta a trasparencia do draw, se ele estiver aparecendo
	trans += 0.01;
	draw_set_alpha(trans);
}
if trans <= 0.1{  //Troca os estados se a trasparencia alcançar 0
	sumindo = false;
	aparecendo = true;
}
if trans >= 1{  //Troca os estados se a transparencia alcançar 1
	sumindo = true;
	aparecendo = false;
}
