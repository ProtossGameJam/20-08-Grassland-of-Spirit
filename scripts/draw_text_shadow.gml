///draw_text_shadow(x, y, string, col)

var _x := argument0, _y := argument1, str := argument2, col := argument3;
draw_set_colour($000000);
draw_text(_x, _y + 1, str);
draw_set_colour(col);
draw_text(_x, _y, str);
