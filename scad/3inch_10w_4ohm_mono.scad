$fn=100; // resolution
frontPlateThickness=1;
cylRoundEdgeRadius=2;

face_plate_height = 73;
face_plate_width = 73;

speakerRadius=25.5;
speakerOffset = 10;

boxDepth = 45;

screwHolderSide = 10;
screwHoleRadius = 1.4;
screwHoleDepth = 10;

// faceplate
difference() {
union() {
        minkowski() {
            cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
            cube([face_plate_width, face_plate_height, frontPlateThickness]);
        }
        cube([face_plate_width, face_plate_height, frontPlateThickness+2]);
    }
    translate([speakerRadius + speakerOffset, speakerRadius + speakerOffset, -1])
    cylinder(r=speakerRadius,h=(frontPlateThickness * 6));
}

// walls
difference() {
    minkowski() {
        cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
        cube([face_plate_width, face_plate_height, boxDepth]);
    }
    translate([0,0, -2])
    cube([face_plate_width, face_plate_height, boxDepth+6]);
}

// back cover
union() {
    translate([0,0,boxDepth * 2 + 6])
    minkowski() {
        cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
        cube([face_plate_width, face_plate_height, frontPlateThickness]);
    }
    translate([0,0,boxDepth * 2 + 3])
    cube([face_plate_width, face_plate_height, frontPlateThickness + 2]);
}

// corner posts with screw hole
difference() {
    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
    translate([screwHolderSide/2, screwHolderSide/2, boxDepth + -11])
    cylinder(r=screwHoleRadius,h=screwHoleDepth);
}

difference() {
    translate([face_plate_width - screwHolderSide,0,0])
    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
    translate([face_plate_width - screwHolderSide + screwHolderSide/2, screwHolderSide/2, boxDepth + -11])
    cylinder(r=screwHoleRadius,h=screwHoleDepth);
}

difference() {
    translate([face_plate_width - screwHolderSide,face_plate_height - screwHolderSide,0])
    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
    translate([face_plate_width - screwHolderSide + screwHolderSide/2, face_plate_height - screwHolderSide + screwHolderSide/2, boxDepth + -11])
        cylinder(r=screwHoleRadius,h=screwHoleDepth);
}

difference() {
    translate([0,face_plate_height - screwHolderSide,0])
    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
    translate([screwHolderSide/2, face_plate_height - screwHolderSide + screwHolderSide/2, boxDepth + -11])
    cylinder(r=screwHoleRadius,h=screwHoleDepth);
}