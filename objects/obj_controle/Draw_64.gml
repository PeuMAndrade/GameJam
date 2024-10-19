/// @description Insert description here
// You can write your code in this editor
var _escala = 3;
var _guia = display_get_gui_height();
var _spra = sprite_get_height(spr_hud_vida) * _escala;
var _huda = _guia - _spra;
var _totalo = 10;

draw_sprite_ext(spr_hud_barra_vida, 0, 0, _huda, (instance_number(obj_arvore)/_totalo) * _escala, _escala, 0, c_white, 1);

draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);



