
// combate do inimigo
//esse so vai atacar o player para deixar o jogo mais dificil
if (instance_exists(obj_player)) {
    // Define o alvo como o obj_player
    alvo = obj_player;
    
    // Movimento em direção ao jogador com verificação de colisão
    if (x < alvo.x) {
        if (!place_meeting(x + vel, y, Object_Barreira)) {
            x += vel;
        }
    }
    if (x > alvo.x) {
        if (!place_meeting(x - vel, y, Object_Barreira)) {
            x -= vel;
        }
    }
    if (y < alvo.y) {
        if (!place_meeting(x, y + vel, Object_Barreira)) {
            y += vel;
        }
    }
    if (y > alvo.y) {
        if (!place_meeting(x, y - vel, Object_Barreira)) {
            y -= vel;
        }
    }

    // Checar se está perto o suficiente para atacar
    if (distance_to_object(alvo) <= 32) {
        
        alvo.vida -= 1;
    }
}
//cabo vida = morreu
if(vida<0){
	instance_destroy();
}
