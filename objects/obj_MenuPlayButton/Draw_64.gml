/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color($608CD0);
draw_roundrect_ext(x - width/2, y - height/2, x + width/2, y + height/2, 25, 25, 0);

draw_set_font(fnt_MenuButton);
draw_set_color($A7DCF1);
draw_text(x, y, "Play");
