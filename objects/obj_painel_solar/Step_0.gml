/// @description Insert description here
// You can write your code in this editor
if (is_loading && sprite_index != spr_painel_solar) {
    // Incrementa o contador de carregamento
    load_counter++;

    // Verifica se o tempo de carregamento foi atingido
    if (load_counter < load_time) {
        // Troca o sprite para o estado intermediário
        if (load_counter >= 50) {
            sprite_index = spr_painel_solar_mid;
        }
    } else {
        // Se o tempo de carregamento foi atingido, muda para o sprite final
        sprite_index = spr_painel_solar;
        is_loading = false; // Desativa o estado de carregamento
        
        // Aqui você pode adicionar a lógica que deseja executar após o carregamento
    }
}