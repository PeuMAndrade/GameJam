/// @description Insert description here
// You can write your code in this editor
if inicializar == false{
	scr_textos();
	inicializar= true;
}

if mouse_check_button_pressed(mb_left){
	if (page < array_length(texto)-1){
		page++;
		
	}else{
		instance_destroy();
	}
}