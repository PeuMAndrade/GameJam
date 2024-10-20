//
/* eu tentei varias vezes e infelizmente nao funcionou mas pfv tentem conserta ou fazer funcionar
	Problema: ate q a bola da dano as vezes porem infelizmente ela nao aparece na room

// Move a bala na direção definida
x += lengthdir_x(vel, direction);
y += lengthdir_y(vel, direction);

// Verifica colisão com barreira
if (place_meeting(x, y, Object_Barreira)) {
    // Se colidir, destrua a bala
    instance_destroy();
}

// Verifica colisão com o inimigo (Object_Humano)
if (place_meeting(x, y, Object_Humano)) {
    // Se colidir com o inimigo, aplique dano e destrua a bala
    var inimigo = instance_place(x, y, Object_Humano);  // Obtém a instância do inimigo
    if (inimigo != noone) {  // Verifica se o inimigo existe
        inimigo.vida -= 1;  // Diminui 1 ponto de vida do inimigo
    }
    instance_destroy();  // Destroi a bala após o impacto
}

// Destroi a bala se sair da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
*/