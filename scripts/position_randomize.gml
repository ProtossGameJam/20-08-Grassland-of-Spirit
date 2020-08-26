///position_randomize(dist, against)

var dist := argument0, against := argument1, cx, cy;

x = -dist;
y = -dist;
do {
   cx = random(room_width);
   cy = random(room_height);
   var inst := instance_nearest(cx, cy, against);
} until(point_distance(cx, cy, inst.x, inst.y) >= dist);
x = cx;
y = cy;
