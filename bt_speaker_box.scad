include <bt_speaker_param_v1_0.scad>

frontPlateThickness=1;
cylRoundEdgeRadius=2;
screwCyl=4;
cubeFrontPlateRectHeight=115.6;
cubeFrontPlateRectWidth=90;
speakerRadius=22;
speakerDist=9;

//color("red", 0.5) cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
//color("green", 0.5) cube([cubeFrontPlateRectHeight,cubeFrontPlateRectWidth,frontPlateThickness]);

//color("pink", 0.5) 
union() {
    // front plate
    difference() {

        minkowski()
        {
          cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
          cube([cubeFrontPlateRectHeight,cubeFrontPlateRectWidth,frontPlateThickness]);
        }

        color("red", 0.5) translate([speakerRadius + speakerDist, speakerRadius + speakerDist, -1])
        cylinder(r=speakerRadius,h=(frontPlateThickness * 4));

        color("blue", 0.5) translate([(speakerRadius * 3) + (speakerDist * 2), speakerRadius + speakerDist, -1])
        cylinder(r=speakerRadius,h=(frontPlateThickness * 4));
    }
    

//        color("magenta",0.5)
//        translate([0,60,2]) cube([96.4, 24.2, 22.7]);
        translate([96.4,60,2]) cube([2, 24.2, 5]);
        translate([0,58,2]) cube([96.4, 2, 5]);
        translate([0,84.2,2]) cube([96.4, 2, 5]);
    
//        translate([screwCyl,screwCyl,2]) cylinder(r=screwCyl,h=frontPlateThickness+22);
//    
//        translate([screwCyl,cubeFrontPlateRectWidth-2,2]) cylinder(r=screwCyl,h=frontPlateThickness+22);
//    
//        translate([cubeFrontPlateRectHeight-1,screwCyl,2]) cylinder(r=screwCyl+1,h=frontPlateThickness+22);
//    
//        translate([cubeFrontPlateRectHeight-1,cubeFrontPlateRectWidth-1,2]) cylinder(r=screwCyl+1,h=frontPlateThickness+22);

    
    // walls
    difference() {
        translate([0,0,2]) 
        // outer box
        minkowski()
        {
          cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness+20);
          cube([cubeFrontPlateRectHeight,cubeFrontPlateRectWidth,frontPlateThickness+1]);
        }
        translate([2,2,1])
       // inner box 
        minkowski()
        {
          cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness+22);
          cube([cubeFrontPlateRectHeight-4,cubeFrontPlateRectWidth-4,frontPlateThickness+3]);
        }
        
        translate([-2.2,65,4]) cube([2.4, 14.2, 7.5]);
    }

//    translate([0,0,42]) color("magenta",0.5)
//    // back lid
//    minkowski()
//    {
//      cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
//      cube([cubeFrontPlateRectHeight,cubeFrontPlateRectWidth,frontPlateThickness]);
//    }
    
}


