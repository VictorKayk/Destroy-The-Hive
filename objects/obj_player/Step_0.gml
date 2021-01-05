/// @description Código base

#region Player

	#region Vida
	if vida <= 0{  //Se a vida do player so menor que 0, o objeto é destruido
		instance_destroy();
		obj_controlador.alarm[5] = room_speed
	}
	#endregion
	
	#region Controles
	var direita = keyboard_check(ord("D")) or keyboard_check(vk_right);  //Tecla para direita
	var esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);  //Tecla para esquerda
	var cima = keyboard_check(ord("W")) or keyboard_check(vk_up);  //Tecla para cima
	var baixo = keyboard_check(ord("S")) or keyboard_check(vk_down);  //Tecla para baixo
	var tiro = keyboard_check(vk_space);  //Tecla para o tiro
	var tec_escudo = keyboard_check(vk_control);  //Tecla para o escudo
	#endregion
	
	#region Escolha
	if escudo{
		tir_ou_esc = tiro - tec_escudo;
		if tir_ou_esc == 1{
			atirando = true
		}
		else{
			atirando = false
		}
		if tir_ou_esc == -1{
			defendendo = true
		}
		else{
			defendendo = false
		}
	}
	#endregion

	#region Movimentação
	//Movimentação horizontal
	var move1 = direita - esquerda;  //Verifica para qual lado o jogador que ir
	xvl = move1 * vl;
	x += xvl;
	//Movimentação vertical
	var move2 = baixo - cima;  //Verifica para qual lado o jogador que ir
	yvl = move2 * vl;
	y += yvl;
		#region Impedindo que o jogador saia da tela
		//Laterais
		if x <= 20{  //Não deixa que o jogador saia pela esquerda
			x = 20;
		}
		if x >= room_width - 20{  //Não deixa que o jogador saia pela direita
			x = room_width - 20;
		}
		//Pontas
		if y <= 20{  //Não deixa que o jogador saia por cima
			y = 20;
		}
		if y >= room_height - 20{  //Não deixa que o jogador saia por baixo
			y = room_height - 20;
		}
		#endregion
	#endregion
	
	#region Tiro
		#region Ultimo recurso
		if vida == 1{
			ult_recurso = true;
		}
		else{
			ult_recurso = false;
		}
		#endregion
		#region Tiro 01
		if obj_controlador.level <= 2{
			sprite_index = spr_player1;
			image_speed = 1;
			if ult_recurso{   //Ultimo recurso (Se a vida do jogador for igual a 0)
				freq = 0.40;  //A frequência de tiro é alterada para 0.3
				vl = 5;  //A velocidade de movimento é alterada para 5
				if tiro{  //Se o jogador estiver aperdando a tecla de tiro e o delay for igual ao max_delay, ele atira, e o delay é substraido na quantidade do max_delay
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro01);
						delay -= max_delay;
					}
				}
				else{
					atirando = false;
				}
			}
			else{  //Normal (Se o jogador tiver 1 ou mais de vida)
				freq = 0.30;  //A frequência de tiro é mantida em 0.2
				vl = 4;  //A velocidade de movimento é mantida em 4
				if tiro{  //Se o jogador estiver aperdando a tecla de tiro e o delay for igual ao max_delay, ele atira, e o delay é substraido na quantidade do max_delay
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro01);
						delay -= max_delay;
					}
				}
				else{
					atirando = false;
				}
			}
		}
		#endregion
		#region Tiro 02
		else if obj_controlador.level > 2 and obj_controlador.level <= 4{
			sprite_index = spr_player2;
			image_speed = 1;
			if ult_recurso{   //Ultimo recurso (Se a vida do jogador for igual a 0)
				freq = 0.25;  //A frequência de tiro é alterada para 0.3
				vl = 5;  //A velocidade de movimento é alterada para 5
				if tiro{  //Se o jogador estiver aperdando a tecla de tiro e o delay for igual ao max_delay, ele atira, e o delay é substraido na quantidade do max_delay
					if delay == max_delay{
						instance_create_layer(x + 15, y, "Tiro", obj_tiro01);
						instance_create_layer(x - 15, y, "Tiro", obj_tiro01);
						delay -= max_delay;
					}
				}
				else{
					atirando = false;
				}
			}
			else{  //Normal (Se o jogador tiver 1 ou mais de vida)
				freq = 0.15;  //A frequência de tiro é mantida em 0.2
				vl = 4;  //A velocidade de movimento é mantida em 4
				if tiro{  //Se o jogador estiver aperdando a tecla de tiro e o delay for igual ao max_delay, ele atira, e o delay é substraido na quantidade do max_delay
					if delay == max_delay{
						instance_create_layer(x + 15, y, "Tiro", obj_tiro01);
						instance_create_layer(x - 15, y, "Tiro", obj_tiro01);
						delay -= max_delay;
					}
				}
				else{
					atirando = false;
				}
			}
		}
		#endregion
		#region Tiro 03
		else if obj_controlador.level > 4 and obj_controlador.level <= 6{ 
			sprite_index = spr_player3;
			image_speed = 1;
			if ult_recurso{   //Ultimo recurso (Se a vida do jogador for igual a 0)
				freq = 0.5;  //A frequência de tiro é alterada para 0.5
				vl = 5;  //A velocidade de movimento é alterada para 5
				if tiro{  //Se o jogador estiver aperdando a tecla de tiro e o delay for igual ao max_delay, ele atira, e o delay é substraido na quantidade do max_delay
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro03);
						var tiro2 = instance_create_layer(x - 10, y, "Tiro", obj_tiro03);
						var tiro3 = instance_create_layer(x + 10, y, "Tiro", obj_tiro03);
						tiro2.image_angle += 15;
						tiro2.direction += 15;
						tiro3.image_angle -= 15;
						tiro3.direction -= 15;
						delay -= max_delay;
					}
				}
				else{
					atirando = false;
				}
			}
			else{  //Normal (Se o jogador tiver 1 ou mais de vida)
				freq = 0.4;  //A frequência de tiro é mantida em 0.4
				vl = 4;  //A velocidade de movimento é mantida em 4
				if tiro{  //Se o jogador estiver aperdando a tecla de tiro e o delay for igual ao max_delay, ele atira, e o delay é substraido na quantidade do max_delay
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro03);
						var tiro2 = instance_create_layer(x - 10, y, "Tiro", obj_tiro03);
						var tiro3 = instance_create_layer(x + 10, y, "Tiro", obj_tiro03);
						tiro2.image_angle += 15;
						tiro2.direction += 15;
						tiro3.image_angle -= 15;
						tiro3.direction -= 15; 
						delay -= max_delay;
					}
				}
				else{
					atirando = false;
				}
			}
		}
		#endregion
		#region Escudo
		if obj_controlador.level >= 6{
			sprite_index = spr_player4;
			image_speed = 1;
			escudo = true;
			if tec_escudo and defendendo == true and durab > 0{
				instance_create_layer(x, y, "Escudo", obj_escudo);
			}
			else{
				instance_destroy(obj_escudo)
				defendendo = false;
			}
			if durab <= 0{
				instance_destroy(obj_escudo);
			}
		}
			#region Durabilidade do escudo
			if durab <= 0{
				durab = 0;
			}
			if obj_controlador.level == 6 {
				if est_durab{
					durab = max_durab;
					est_durab = false;
				}
			}
			else if obj_controlador.level == 7{
				if est_durab == false{
					max_durab += 20;
					durab = max_durab;
					est_durab = true;
				}
			}
			else if obj_controlador.level == 8{
				if est_durab == true{
					max_durab += 25;
					durab = max_durab;
					est_durab = false;
				}
			}
			else if obj_controlador.level == 9{
				if est_durab == false{
					max_durab += 25;
					durab = max_durab;
					est_durab = true;
				}
			}
			else if obj_controlador.level == 10{
				if est_durab == true{
					max_durab += 30;
					durab = max_durab;
					est_durab = false;
				}
			}
			#endregion
		#endregion
		#region Tiro 04
		if obj_controlador.level > 6 and obj_controlador.level <= 8{
			sprite_index = spr_player5;
			image_speed = 1;
			if ult_recurso{
				freq = 0.075;
				vl = 5;
				if tiro{
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro04);
						delay -= max_delay;
					}
				}
				
			}
			else{
				freq = 0.065;
				vl = 4;
				if tiro{
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro04);
						delay -= max_delay;
					}
				}
			}
		}
		#endregion
		#region Tiro 05
		if obj_controlador.level > 8{
			sprite_index = spr_player6;
			image_speed = 1;
			if ult_recurso{
				freq = 0.075;
				vl = 5;
				if tiro{
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro05);
						delay -= max_delay;
					}
				}
			}
			else{
				freq = 0.065;
				vl = 4;
				if tiro{
					if delay == max_delay{
						instance_create_layer(x, y, "Tiro", obj_tiro05);
						delay -= max_delay;
					}
				}
			}
		}
		#endregion
		#region Delay
		if defendendo == true{
			delay = -2.0;
		}
		else{
			if delay < max_delay{  //Se o delay for menor que o max_delay, é o somado a ele mesmo o valor do freq
				delay += freq;
			}
			if delay >= max_delay{  //Se o delay for maior ou igual ao max_delay, o valor dela é definido para o mesmo do max_delay
				delay = max_delay;
			}
		}
		#endregion
	#endregion
#endregion
