include <variables.scad>


difference(){
    intersection(){
        cube(
            [$cubeJunctionWidth, $cubeJunctionWidth, $cubeJunctionHeight],
            center=true
        );
        rotate(45){
            cube(
                [
                    $cubeJunctionDiagonal,
                    $cubeJunctionDiagonal,
                    $cubeJunctionHeight
                ],
                center=true
            );
        };
    };
    translate([0, 0, ($cubeJunctionHeight - $cubeJunctionHoleHeight) / 2]){
        cylinder(
            h=$cubeJunctionHoleHeight,
            r=$cubeJunctionHoleRadius,
            center=true
            );
    }
};

translate(
    [
        0, 0,
        - ($cubeJunctionHeight + $motorPipeHeight - $motorPipeHeightThickness) / 2
    ]){
    difference(){
        cube([
            $motorPipeWidth - 2 * ($motorPipeWidthThickness + $backlash),
            $motorPipeWidth - 2 * ($motorPipeWidthThickness + $backlash),
            $motorPipeHeight - $motorPipeHeightThickness
            ],
            center=true
            );
        translate(
            [0, 0, -((1 - $springTreeHeightProportion) * ($motorPipeHeight - $motorPipeHeightThickness)) / 2]
            ){
            cube([
                ($springTreeWidth + $backlash),
                ($springTreeWidth + $backlash),
                ($springTreeHeightProportion * ($motorPipeHeight - $motorPipeHeightThickness))
                ],
                center=true
                );
        };

    }
}
