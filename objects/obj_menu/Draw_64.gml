/// @description Insert description here
// You can write your code in this editor

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_set_font(ft_menu);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


for(var i=0;i<array_length(opcoes);i++){
	var _gui_largura = display_get_gui_width();
	var _gui_altura = display_get_gui_height();
	
	var _x1 = _gui_largura/2;
	var _y1 = _gui_altura/2;
	
	var _hstr = string_height("I");
	var _wstr = string_width(opcoes[i]);
	
	var _x2 = _x1 - _wstr/2;
	var _y2 = _y1 - _hstr/2 + _hstr * i;
	
	var _x3 = _x1 + _wstr/2;
	var _y3 = _y1 + _hstr/2 + _hstr * i;
	
	
	if(point_in_rectangle(_mx,_my,_x2,_y2,_x3,_y3)){
		esc = 1.3;
		
		if(mouse_check_button_pressed(mb_left)){
			switch opcoes[i]{
				case opcoes[0]: 
					room_goto_next();
					break;
				case opcoes[1]:
					show_message("Creditos");
					break;
				case opcoes[2]:
					game_end();
					break;
			}
			
		}
	}else{
		esc = 1;
	}
	
	
	draw_text_transformed(_x1,_y1 + 120 *i,opcoes[i],esc,esc,0);

}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);

