///string_i(str)

var last := string_ord_at(argument0, string_length(argument0)), apply = '이/가';
if(last >= $ac00 && last <= $d7a3)
   if((last - $ac00)%28 == 0)
      apply := '가';
   else
      apply := '이';
return argument0 + apply;
