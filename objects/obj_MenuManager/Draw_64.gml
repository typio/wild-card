/// @description Insert description here
// You can write your code in this editor

// draw Title text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_CoffeeTin_Title);
draw_set_color($608CD0);
draw_text(room_width/2, room_height/4, "Wild Card");


// draw play button
playbtn_x = room_width/2;
playbtn_y = room_height/2;
playbtn_width = 150;
playbtn_height = 60;

if (playbtn_hover) {
	draw_set_color($667B99);
	draw_roundrect_ext(playbtn_x - playbtn_width/2 + 5, playbtn_y - playbtn_height/2 + 5, playbtn_x + playbtn_width/2 + 5, playbtn_y + playbtn_height/2 + 5, 25, 25, 0);
}

draw_set_color($608CD0);
draw_roundrect_ext(playbtn_x - playbtn_width/2, playbtn_y - playbtn_height/2, playbtn_x + playbtn_width/2, playbtn_y + playbtn_height/2, 25, 25, 0);
draw_set_font(fnt_MenuButton);


if (playbtn_hover) {
	draw_set_color($667B99);
draw_text(playbtn_x, playbtn_y, "Play");
} else {
	draw_set_color($A7DCF1);
draw_text(playbtn_x, playbtn_y, "Play");
}
