include <bt_speaker_param_v1_0.scad>

frontPlateThickness=1;
cylRoundEdgeRadius=2;
cubeFrontPlateRectHeight=115.6;
cubeFrontPlateRectWidth=90;
speakerRadius=21.4;
speakerDist=10;

//color("red", 0.5) cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
//color("green", 0.5) cube([cubeFrontPlateRectHeight,cubeFrontPlateRectWidth,frontPlateThickness]);

//color("pink", 0.5) 

difference() {

minkowski()
{
  cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
  cube([cubeFrontPlateRectHeight,cubeFrontPlateRectWidth,frontPlateThickness]);
}

color("red", 0.5) translate([speakerRadius + speakerDist, speakerRadius + speakerDist, -1])
cylinder(r=speakerRadius,h=(frontPlateThickness * 4));

color("blue", 0.5) translate([speakerRadius + speakerDist + speakerRadius + speakerRadius +speakerDist, speakerRadius + speakerDist, -1])
cylinder(r=speakerRadius,h=(frontPlateThickness * 4));
}