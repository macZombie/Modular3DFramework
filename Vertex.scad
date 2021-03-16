
$fn = 64;


size = 30;

h = 20;

r = 5;

holeD = 6.8;
holeR = holeD / 2.0 ;


/*
module smoothSquare(size,r,h){
    
    difference(){
        translate([0,0,0]) cube([size,size,h]);
    
        translate([0,0,0]) cube([r,r,h]);
        translate([size - r,0,0]) cube([r,r,h]);
        translate([0,size - r,0]) cube([r,r,h]);
        translate([size - r,size - r,0]) cube([r,r,h]);
        
    }
    
    translate([r,r,0]) cylinder(h,r,r);
    translate([size - r,r,0]) cylinder(h,r,r);
    translate([r, size - r,0]) cylinder(h,r,r);
    translate([size - r ,size - r ,0]) cylinder(h,r,r);
   
      
}




module cutOut(x,y){
    
 difference(){
    translate([x  , y + 2,0]) cube([5,6,h]);

          
   translate([x + 2 ,y + 8 ,0]) rotate([0,0,-35]){
         cube([6,4,h]);  
        }
        
    translate([x + 4,y - 2 ,0]) rotate([0,0,35]){
            cube([6,4,h]);  
          }      
        
        
    }

    
}

module crossSection(){
    
    difference(){

    smoothSquare(size,r,h);
    

    
    cutOut(0,10);
    
    rotate([0,0,-90]){
        cutOut(-30,10);
    }
    
    rotate([0,0,180]){
        cutOut(-30,-20);
    }
   
    
    rotate([0,0,90]){
        cutOut(0,-20);
    }
}
    
}
*/
/* START OF DESIGN */
/*
difference(){
    
    translate([-4,-4,-4]) cube( [size + 8  , size + 8 , h + 4 ] );

    crossSection();
    
    translate( [ size / 2 ,size / 2 , - 4 ] ) #cylinder( 4 , 3 , 3 ); 
    
    translate( [ size / 2 ,size / 2 , - 1 ] ) cylinder( 4 , 5.75 , 5.75 ); 
    
}*/

width = 15.0;
wall = ( 19 -  width ) * 0.5;


module brick( x  , y , z ){
    
    
translate( [ x , y , z ] ){
    
    difference(){

        translate([0,0,0]) cube ([19,19,12]);
    
        translate([wall,wall,5]) cube ([width,width,9]);
    
        //translate( [ 9.5 , 9.5 ,0  ] ) #cylinder( 3 , 1.6 , 1.7 ); 
        //translate( [ 9.5 , 9.5 ,3  ] ) #cylinder( 2 , 3.0 , 3.0 ); 
        
         translate( [ 9.5 , 9.5 ,0  ] ) cylinder( 5 , 4.5 , 4.5 ); 
    
    
    }


    translate([0,8,0]) cube ([5,3,12]);
    translate([14,8,0]) cube ([5,3,12]);
    translate([8,0,0]) cube ([3,5,12]);
    translate([8,14,0]) cube ([3,5,12]);

    
    
    }
    
}



brick(0,0,0);

rotate( [ 0 , 90 , 0 ] ){
    brick(0,0,19);
}


rotate( [ 270 , 0 , 0 ] ){
    brick(0,0,19);
}



difference(){
 
    translate([0,0,-19]) cube ([19,19,19]);

    translate( [ 9.5 , 9.5 , -19  ] ) cylinder( 3 , 1.6 , 1.6 ); 
    translate( [ 9.5 , 9.5 ,-16 ] ) cylinder( 20 , 3.0 , 4.5 ); 
   /*
    rotate( [ 0 , 90 , 0 ] ){
        translate( [ 9.5 , 9.5 , 0 ] ) cylinder( 3 , 1.6 , 1.6 ); 
        translate( [ 9.5 , 9.5 ,3 ] ) cylinder( 20 , 3.0 , 4.5 ); 
    }
    
    
     rotate( [ 270 , 0 , 0 ] ){
        translate( [ 9.5 , 9.5 , 0 ] ) cylinder( 3 , 1.6 , 1.6 ); 
        translate( [ 9.5 , 9.5 ,3 ] ) cylinder( 20 , 3.0 , 4.5 ); 
    }
    */
    
}

 