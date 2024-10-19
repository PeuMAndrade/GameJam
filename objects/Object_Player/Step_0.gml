/// @description Insert description here
// You can write your code in this editor



 

//pa cima
if (keyboard_check(vk_up)) {
   if(!place_meeting(x,y - vel, Object_Barreira)){
		 y -= vel;
		}
}

//pa baixo
if (keyboard_check(vk_down)) {
 
	if(!place_meeting(x,y +vel, Object_Barreira)){
		   y += vel;
	}
}

//pa esquerda
if (keyboard_check(vk_left)) {
	if(!place_meeting(x-vel,y , Object_Barreira)){
		x -= vel
	}
  
}
//pa direita
if (keyboard_check(vk_right)) {
	if(!place_meeting(x+vel, y, Object_Barreira)){
			  x += vel; 
	}
}

//bater
if(keyboard_check(ord("G"))){


}