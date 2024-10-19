// Evento Step (obj_personagem)

// Verifica se o personagem está colidindo com o objeto obj_item
distancia = point_distance(x, y, obj_player.x, obj_player.y);
var raio_aproximacao = 100;
if ((distancia <= raio_aproximacao) && sprite_index != spr_painel_solar) {
    // Inicia o carregamento se não estiver carregando
    is_loading = true;
    // Incrementa o contador de carregamento
    load_counter++;

    // Verifica se o tempo de carregamento foi atingido
    if (load_counter >= load_time) {
        sprite_index = spr_painel_solar; // Sprite final após o carregamento
        is_loading = false; // Finaliza o carregamento
    }
} else if(load_counter<hp_max){
    // Se não houver colisão, interrompe o carregamento
    is_loading = false;
	if(load_counter>0){
		load_counter--;
	}
}else{
	is_loading = false;
	
}
