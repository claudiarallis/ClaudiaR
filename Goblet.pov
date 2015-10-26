#include "colors.inc"

#declare LatheCamera=camera{
    location<0, 5, -12>
    look_at <0,5,0>
    };
    
light_source{
    <20,20,-20>
    color White
    }    
    
#declare Cup=lathe{     //lathe makes it 3D around y axis
    linear_spline //straight lines connect the dots
    9 //how many points you have to connect
    <0,0>,<3,0>,<3,1>,<1,1>,<1,3>,<3,3>,<4,7>,<2,4>,<0,4>
    pigment{White}
    finish{
        ambient .2
        specular .4
        }
        }; 
        
camera{LatheCamera}        
object{Cup} 

#declare SplineCamera

#declare RainbowLathe=lathe{
    linear_spline
    //quadratic_spline   //curve of line depends on point between two points being connected
    //cubic spline //gets rid of some sharp corners by also taking into account the point after
    //bezier_spline //draws line from first point to last, and uses middle points to guide the line
    4//5//5//8     //for bezier, you need to have some multiple of 4 for your # of points
    RedPoint
    OrangePoint
    YellowPoint
    GreenPoint
    BluePoint
    pigment{White}
    finish{ambient1}
    }
              