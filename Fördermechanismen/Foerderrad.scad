/**************************************************
 *               FÖRDERRAD GENERATOR              *
 * a simples Generator to gernerate marble wheels *
 *                                                *
 *  created by cyberkeiler  (terramultimedia.de)  *
 **************************************************/

/**************************************************
 *            All Settings are below              *
 vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv*/

// Marble Setup
marble_dia = 1.6; // The Diameter of your Marbles

//Marble Barrel Setup
marblebarrel_radius = 0;     // The Radius of the Barrel (!) Must be grater than the Radius of the Slots + Marbleradius!
marblebarrel_slot_radius = 5.75; // Radius to center of slots
marblebarrel_slot_n = 10;  // Amount of Slots in Barrel

// Spokes Setup
spokes_use = true;
spokes_radius_outer = 4.5;
spokes_radius_inner = 2.0;
spokes_thickness = 1.5;
spokes_amount = 5;

// Center Hole
axis_use = true;
axis_radius = 0.6;

/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ *
 *            All Settings are above              *
 **************************************************
 *      EVERYTHING BELOW IS INTERNAL LOGIC!       *
 * DON'T WORRY ABOUT IT ;) ONLY CHANGE THE ABOVE! *
 **************************************************/

 // Required other files
include <MarbleBarrel.scad>;
include <Spokes.scad>;

// Validating logics
if (marblebarrel_radius >0 && marblebarrel_radius < (marblebarrel_slot_radius+marble_dia/2))
  { echo ("<b>### ERROR ###</b> Barrel Radius must be larger than sum of slot + Marble Radius!"); }

// Set the fraction of circles
$fn=100;

difference(){
  // Outline
  if(marblebarrel_radius > 0)
    circle(r = marblebarrel_radius); // Create barrel as circle if radius is >0
  else
    import("../gear/15,7-30.dxf"); // Or Import a Gear

  // Cut Murble Slots
  MarbleBarrel(marblebarrel_slot_radius, marble_dia/2 , marblebarrel_slot_n);

  // Cut Spikes
  if(spokes_use) Spokes(spokes_radius_outer, spokes_radius_inner, spokes_thickness, spokes_amount);

  //Center Hole
  if(axis_use) circle(r = axis_radius);
}
