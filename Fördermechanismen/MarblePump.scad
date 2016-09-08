/**************************************************
 *             MARBLE PUMP GENERATOR              *
 * a simples Generator to gernerate marble pumps  *
 *                                                *
 *  created by cyberkeiler  (terramultimedia.de)  *
 **************************************************/

/**************************************************
 *            All Settings are below              *
 vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/

// Marble Setup
marble_dia = 16; // The Diameter of your Marbles

//Marble Pump Setup
marblepump_height = 60;
marblepump_shaft_rad = 16;
marblepump_shaft_dia = 1.8;

/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ *
 *            All Settings are above              *
 **************************************************
 *      EVERYTHING BELOW IS INTERNAL LOGIC!       *
 * DON'T WORRY ABOUT IT ;) ONLY CHANGE THE ABOVE! *
 **************************************************/


// Piston
color([0,0,1,1])
  MarblePumpPiston();

// Piston Block
color([1,0.3,0,.6])
  MarblePump(_length = 50);

module MarblePumpPiston( h = marblepump_height){
  difference(){
    cylinder(r = marble_dia/2, h = ( h - marble_dia));
    translate([0,0,(h - marble_dia*2)/2])
    cube([marblepump_shaft_dia, marble_dia, h - marble_dia*2], center=true);
  }
}

module MarblePump(_width = marble_dia*1.5, _length, _height = marblepump_height){

  translate([0, 0, marblepump_height/2])
    difference(){
      cube([_length, _width, _height], center = true);
      cylinder(r = marble_dia/2, h = _height*1.5, center=true);
      translate([0,-(_width/2 - marblepump_shaft_dia*0.5),0])
        rotate([90,0,0])
          cylinder(r = marblepump_shaft_rad, h=marblepump_shaft_dia*2, center=true);
      translate([0,(_width/2 - marblepump_shaft_dia*0.5),0])
        rotate([90,0,0])
          cylinder(r = marblepump_shaft_rad, h=marblepump_shaft_dia*2, center=true);
      cube([marblepump_shaft_dia, _width, marblepump_shaft_rad*2], center=true);
    }

}
