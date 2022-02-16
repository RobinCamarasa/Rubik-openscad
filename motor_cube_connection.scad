include <variables.scad>
include <tree_cube.scad>
include <motor_pipe.scad>


translate([-$motorPipeWidth/2, -$motorPipeWidth/2, 0]){
    motor_pipe();
};

translate([0, 0, -100+80*$t]){
    rotate([180, 0, 0]){
        tree_cube();
    }
}
