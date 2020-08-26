///read_csv(fname)

var
   f := file_text_open_read(argument0), l,
   csvW, gridW := 0, gridH := 0, gridCap := 1,
   csv := ds_list_create(), keymap := ds_map_create(), grid,
   typeTable;
file_text_readln(f);

// determine width
typeTable = comma_separate(file_text_readln(f));
csvW := array_length_1d(typeTable);
for(var i := 0; i < csvW; i++)
   gridH += typeTable[i] != 'desc';

grid := ds_grid_create(gridCap, gridH);
csv[| 0] = keymap;
csv[| 1] = grid;

// fill w/ actual value
while(!file_text_eof(f)) {
   l = comma_separate(file_text_readln(f));
   if(gridW == gridCap) {
      gridCap *= 2;
      ds_grid_resize(grid, gridCap, gridH);
   }
   for(var i := 0, ix := 0; i < csvW; i++) {
      var val := undefined;
      switch(typeTable[i]) {
         case 'real':
            val = real(l[i]);
         break;
         case 'string':
            val = l[i];
         break;
      }
      if(ix == 0)
         keymap[? val] = gridW;
      if(!is_undefined(val))
         grid[# gridW, ix++] = val;
      
   }
   gridW++;
}

ds_grid_resize(grid, gridW, gridH);
file_text_close(f);
return csv;
