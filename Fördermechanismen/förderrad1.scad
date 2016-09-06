$fn=90;
Foerderrad(5.5,5.5, 0.8,10,5);

module Foerderrad(r1, r2, r3, n, n_speichen){
  union(){
    difference(){
      import("../gear/17cm-30.dxf");
      for (i=[0: 1: n]){
        rotate([0,0,360/n*i])
        translate([r2,0,0])
        circle(r=r3);
      }
      circle(r=4);
    }

    for (i=[0: 1: n_speichen]){
      rotate([0,0,360/n_speichen*i])
      translate([-0.6,1.2,0])
      square([1.2,3]);
    }


    difference(){
      circle(r=1.5);
      //Bohrloch
      circle(r=0.3);
    }
  }
}
