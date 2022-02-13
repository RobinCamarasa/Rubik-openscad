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

