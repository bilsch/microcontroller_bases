/*
 * Generic platform
 * Simply change the values for the base and the platform 
 * to mount the microcontroller should auto fit on top
*/

$fn=100;
base = [110 + 5, 85 + 5, 10]; // udoo
// base = [ 68.7 + 5, 53.3 + 5, 10 ]; // arduino uno
// base = [ 101.6 + 5, 53.3 + 5, 10 ]; // arduino mega/due

platform = [ base[0]-10, base[1]-10, base[2]-5];
platform_bed = [ platform[0]-2, platform[1]-2, platform[2]-3 ];
 
union() {
  cube(base);
  difference() {
    translate([5.5,5,base[2]]) cube(platform);
    translate([6.5,6,(platform[2]+base[2])-2]) cube(platform_bed);
  }
}
