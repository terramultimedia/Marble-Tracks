module Spokes(r1, r2, thick, n){
  difference(){
    circle(r = r1);
    union(){
      for (i=[0: 1: n]){
        rotate([0,0,360/n*i])
        translate([-thick/2,r2,0])
        square([thick,(r1-r2)]);
      }
      circle(r=r2);
    }
  }
}
