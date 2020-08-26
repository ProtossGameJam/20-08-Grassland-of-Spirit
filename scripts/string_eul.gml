///string_eul(str)

var last := string_ord_at(argument0, string_length(argument0)), apply = '을/를';
if(last >= $ac00 && last <= $d7a3)
   if((last - $ac00)%28 == 0)
      apply := '를';
   else
      apply := '을';
return argument0 + apply;
