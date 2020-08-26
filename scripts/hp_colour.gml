///hp_colour(curr, max, blue)

var curr := argument0, _max := argument1, blue := argument2;
if(blue && 3*curr < _max)
   return merge_colour($ffff00, $ffff55, 3*curr/_max);
return merge_colour($0000ff, $ffffff, curr/_max);
