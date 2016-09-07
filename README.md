# Marble Track
A project of @cyberkeiler and @xilensium in the netz39 Hackerspace. 

## Fördermechanismen
### Elevating Wheel
![](docu/images/Foerderrad_1.png)

    // Marble Setup
    marble_dia = 1.6; // The Diameter of your Marbles

    //Marble Barrel Setup
    marblebarrel_radius = 0;     // The Radius of the Barrel + Marbleradius!
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

### Marble Pump
Marbles are taken from one hole and pushed out of another. Building a Vertical tube around the second hole will generate a vertical lift for the marbles. 

### Piston Steps
There are several continously larger block-pistons placed on one a camshaft. Each Endposition will enable two steps to be on the Same level, so the marble may roll to the next piston ...

### Sawteeth Steps
