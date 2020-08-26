///eval_atk_raw(lvl, mp, bonus)

var lvl := argument0, mp := argument1, bonus := argument2;
return round((100 + bonus)/100*mp*query(oDB.level, 1040000 + lvl, 3));
