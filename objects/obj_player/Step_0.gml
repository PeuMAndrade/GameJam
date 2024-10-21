/// @description Insert description here
// You can write your code in this editor



//pa cima
if (keyboard_check(ord("W"))) {
	andarCima();
}

//pa baixo
if (keyboard_check(ord("S"))) {
	andarBaixo();
}

//pa esquerda
if (keyboard_check(ord("A"))) {
	andarEsquerda();
  
}
//pa direita
if (keyboard_check(ord("D"))) {
	andarDireita();
}

#region movimento (vi num video e curti essa funcao)
function andarDireita(){
	if(!place_meeting(x+vel, y, Object_Barreira)){
		x += vel; 
		//direcao =0 parte usada no tiro
	}
}

function andarEsquerda(){
	if(!place_meeting(x-vel,y , Object_Barreira)){
		x -= vel
		//direcao = 180 parte usada no tiro
	}
}

function andarCima(){
 if(!place_meeting(x,y - vel, Object_Barreira)){
		 y -= vel;
		// direcao = 90 parte usada no tiro
	}
}

function andarBaixo(){
if(!place_meeting(x,y +vel, Object_Barreira)){
		   y += vel;
		   //direcao =270 parte usada no tiro
	}	
}

#endregion


//bater
if(keyboard_check_pressed(ord("G"))){
	atacar_inimigos()
	
}

/*          nao funcionou mas qm tiver tempo e boa vontade de por mao na massa fique a vontade
// quase funcionou porem n aparece o sprite "andando"
//ataque distante 
if(keyboard_check_pressed(vk_space)){
	Atirar();
}




function Atirar(){
	bala = instance_create_layer(x,y, "Insta_bala",obj_bala)
	bala.direction = direction
	

}
*/

// Função para atacar inimigos
function atacar_inimigos() {
    //testando ainda qual melhor distancia
    var alcance_ataque = 45;

    // Procurar todos os objetos inimigos dentro do alcance
    with (Object_Humano) {
        // Se a distância entre o jogador e o inimigo for menor ou igual ao alcance
        if (distance_to_object(obj_player) <= alcance_ataque) {
            // Causa dano ao inimigo (por exemplo, subtrair vida)
            vida -= 10;
            
 
        }
    }
}

if distance_to_object(obj_par_npcs) <= 100{
	if keyboard_check_pressed(ord("F")){
		var _npc = instance_nearest(x,y, obj_par_npcs);
		var _dialogo = instance_create_layer(x,y,"Dialogo",obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
}}