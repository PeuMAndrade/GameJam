/// @description Insert description here
// You can write your code in this editor
if(load_counter!=hp_max){
	var bar_x = x - sprite_width/2; // Centraliza a barra horizontalmente
	var bar_y = y- 70;; // Posição vertical (acima do inimigo)
	var hp_ratio = load_counter / hp_max;
	draw_sprite_part(spr_hud_barra_progresso_solar_painel, 0, 0, 0, sprite_width * hp_ratio, sprite_height, bar_x, bar_y);
}
draw_set_halign(-1);
draw_set_valign(-1);
draw_text(x-sprite_width/2, y+35, distancia);
draw_self();


