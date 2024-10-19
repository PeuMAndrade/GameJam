// Evento Step (obj_personagem)

// Verifica se o personagem está colidindo com o objeto obj_item
var distancia = point_distance(x, y, obj_player.x, obj_player.y);
var raio_aproximacao = 50;
if ((distancia <= raio_aproximacao) && sprite_index != spr_painel_solar) {
    // Inicia o carregamento se não estiver carregando
    
	if (!is_loading) {
        is_loading = true;
        load_counter = 0; // Reinicia o contador
    }

    // Incrementa o contador de carregamento
    load_counter++;

    // Muda o sprite para o estado intermediário
    if (load_counter >= 150 && load_counter < load_time) {
        sprite_index = spr_painel_solar_mid;
    }

    // Verifica se o tempo de carregamento foi atingido
    if (load_counter >= load_time) {
        sprite_index = spr_painel_solar; // Sprite final após o carregamento
        is_loading = false; // Finaliza o carregamento
    }
} else {
    // Se não houver colisão, interrompe o carregamento
    is_loading = false;
}
