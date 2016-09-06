module MarbleBarrel(r_barrel, r_slot, n){
  for (i=[0: 1: n]){
    rotate([0,0,360/n*i])
    translate([r_barrel,0,0])
    circle(r=r_slot);
  }
}
