///string_gwa(str)

var last := string_ord_at(argument0, string_length(argument0)), apply = '와/과';
if(last >= $ac00 && last <= $d7a3)
   if((last - $ac00)%28 == 0)
      apply := '와';
   else
      apply := '과';
return argument0 + apply;
