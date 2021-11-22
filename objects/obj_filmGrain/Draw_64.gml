var guiWidth=display_get_gui_width();
var guiHeight=display_get_gui_height();

//gpu_set_blendmode(bm_subtract);
//gpu_set_blendmode(bm_max);



var xx=irandom(guiWidth);
var yy=irandom(guiHeight);
var xx1=irandom(guiWidth);
var yy1=irandom(guiHeight);
//var xx2=irandom(guiWidth);
//var yy2=irandom(guiHeight);
//var xx3=irandom(guiWidth);
//var yy3=irandom(guiHeight);
//var xx4=irandom(guiWidth);
//var yy4=irandom(guiHeight);
//var xx5=irandom(guiWidth);
//var yy5=irandom(guiHeight);
//var xx6=irandom(guiWidth);
//var yy6=irandom(guiHeight);
//var xx7=irandom(guiWidth);
//var yy7=irandom(guiHeight);
//var xx8=irandom(guiWidth);
//var yy8=irandom(guiHeight);

//FPScount = FPScount + 1
//draw_sprite_tiled(spr_filmGrain4,0,xx1,yy1);

//if(FPScount%4 == 0) {
draw_sprite_tiled(spr_filmGrain3652,0,xx,yy);		//Bit much
draw_sprite_tiled(spr_filmGrain4,0,xx1,yy1);	//Kinda sandstormy but good
//draw_sprite_tiled(spr_filmGrain5,0,xx2,yy2);	//Trash
//draw_sprite_tiled(spr_filmGrain6,0,xx3,yy3);	//Too much
//draw_sprite_tiled(spr_filmGrain7,0,xx4,yy4);	//Too much but could be good with help
//draw_sprite_tiled(spr_filmGrain8,0,xx5,yy5);	//Too much


//draw_sprite_tiled(spr_filmGrain,0,xx,yy);
//draw_sprite_tiled(spr_filmGrain2,0,xx,yy);
//draw_sprite_tiled(spr_filmGrain9,0,xx,yy);
//draw_sprite_tiled(spr_filmGrain10,0,xx6,yy6);
//draw_sprite_tiled(spr_filmGrain11,0,xx6,yy6);
//draw_sprite_tiled(spr_filmGrain12,0,xx7,yy7);
//draw_sprite_tiled(spr_filmGrain13,0,xx8,yy8);
//FPScount = 0
//}


gpu_set_blendmode(bm_normal);