include <variables.scad>


union(){
    difference(){
        cube(size=[$motorPipeWidth, $motorPipeWidth, $motorPipeHeight]);
        translate([$motorPipeWidthThickness, $motorPipeWidthThickness, 0]){
            cube(
                size=[
                    $motorPipeWidth - 2 * $motorPipeWidthThickness,
                    $motorPipeWidth - 2 * $motorPipeWidthThickness,
                    $motorPipeHeight - $motorPipeHeightThickness
                ]
            );
        };
        translate([
            $motorPipeWidth / 2,
            $motorPipeWidth / 2,
            $motorPipeHeight - $motorTreeHeight
            ]){
                cylinder(h=$motorTreeHeight, r=$motorTreeRadius);
        };
    };

    translate([
        ($motorPipeWidth - $springTreeWidth) / 2,
        ($motorPipeWidth - $springTreeWidth) / 2,
        (1 - $springTreeHeightProportion) * ($motorPipeHeight - $motorPipeHeightThickness)
    ]){
        cube(
            size=[
                $springTreeWidth, $springTreeWidth,
                $springTreeHeightProportion * ($motorPipeHeight - $motorPipeHeightThickness)
            ]
        );
    };
};
