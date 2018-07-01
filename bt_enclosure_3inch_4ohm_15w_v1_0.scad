include <bt_enclosure_3inch_4ohm_15w_param_v1_0.scad>

frontPlateThickness=1;
cylRoundEdgeRadius=2;

face_plate_height = 160;
face_plate_width = 110;
speakerRadius=38;
speakerLeftOffset = 17;
speakerBottomOffset = 17;

smallCircleRadius = 18;
smallCircleOffset = 17.5;

smallRectWidth = 37;

boxDepth = 80;

screwHolderSide = 10;
screwHoleRadius = 1.4;
screwHoleDepth = 10;

//difference() {
////    color("red", 0.5)
//    union() {
//        minkowski() {
//            cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
//            cube([face_plate_width, face_plate_height, frontPlateThickness]);
//        }
//        cube([face_plate_width, face_plate_height, frontPlateThickness+2]);
//    }
//    translate([speakerRadius + speakerLeftOffset, speakerRadius + speakerBottomOffset, -1])
//    cylinder(r=speakerRadius,h=(frontPlateThickness * 6));
//    
//    translate([smallCircleRadius + smallCircleOffset + 1, speakerBottomOffset * 2 + speakerRadius * 2 +  smallCircleRadius, -1])
//    cylinder(r=smallCircleRadius,h=(frontPlateThickness * 6));
//    
//    translate([smallCircleRadius + smallCircleOffset + 1, speakerBottomOffset * 2 + speakerRadius * 2, -1])
//    cube([smallRectWidth, smallCircleRadius * 2, frontPlateThickness * 6]);
//    
//    translate([smallCircleRadius + smallCircleOffset + smallRectWidth + 1, speakerBottomOffset * 2 + speakerRadius * 2 +  smallCircleRadius, -1])
//    cylinder(r=smallCircleRadius,h=(frontPlateThickness * 6));
//}

//color("blue", 0.5)

//difference() {
//    minkowski() {
//        cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
//        cube([face_plate_width, face_plate_height, boxDepth]);
//    }
//    translate([0,0, -2])
//    cube([face_plate_width, face_plate_height, boxDepth+6]);
//}

union() {
    translate([0,0,boxDepth + 6])
    minkowski() {
        cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
        cube([face_plate_width, face_plate_height, frontPlateThickness]);
    }
    translate([0,0,boxDepth + 3])
    cube([face_plate_width, face_plate_height, frontPlateThickness + 2]);
}

//difference() {
//    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
//    translate([screwHolderSide/2, screwHolderSide/2, boxDepth + -11])
//    cylinder(r=screwHoleRadius,h=screwHoleDepth);
//}
//
//difference() {
//    translate([face_plate_width - screwHolderSide,0,0])
//    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
//    translate([face_plate_width - screwHolderSide + screwHolderSide/2, screwHolderSide/2, boxDepth + -11])
//    cylinder(r=screwHoleRadius,h=screwHoleDepth);
//}
//
//difference() {
//    translate([face_plate_width - screwHolderSide,face_plate_height - screwHolderSide,0])
//    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
//    translate([face_plate_width - screwHolderSide + screwHolderSide/2, face_plate_height - screwHolderSide + screwHolderSide/2, boxDepth + -11])
//        cylinder(r=screwHoleRadius,h=screwHoleDepth);
//}
//
//difference() {
//    translate([0,face_plate_height - screwHolderSide,0])
//    cube([screwHolderSide, screwHolderSide, boxDepth-2]);
//    translate([screwHolderSide/2, face_plate_height - screwHolderSide + screwHolderSide/2, boxDepth + -11])
//    cylinder(r=screwHoleRadius,h=screwHoleDepth);
//}






