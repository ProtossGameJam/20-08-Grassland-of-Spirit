///bbox_visible(padX, padY)

var padX := argument0, padY := argument1;
return
   bbox_right + padX >= view_xview && bbox_left - padX <= view_xview + view_wview &&
   bbox_bottom + padY >= view_yview && bbox_top - padY <= view_yview + view_hview;
