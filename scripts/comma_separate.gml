///comma_separate(str)

var str := argument0, len := string_length(str), r, l := 0, e := false, i := 1, j := 1;
while(!e) {
   while(true) {
      var c := ord(string_char_at(str, ++j));
      if(c == 44)
         break;
      if(c == 10 || c == 13) {
         e = true;
         break;
      }
      if(j == len) {
         e = true;
         j++;
         break;
      }
   }
   r[l++] = string_copy(str, i, j - i);
   i = ++j;
}
return r;
