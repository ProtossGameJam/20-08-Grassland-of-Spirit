///query(csv, key, col)

var
   csv := argument0, key := argument1, col := argument2,
   keymap := csv[| 0], grid := csv[| 1];
return grid[# keymap[? key], col];
