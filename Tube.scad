
$fn = 64;


size = 30;

h = 10;

r = 5;

holeD = 6.8;
holeR = holeD / 2.0 ;

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


module cutOutTheSquares(){
    
      translate([3,3,0]) {
        smoothSquare(4,1,h);
    }
  
    translate([size -  ( 2 + r ) ,3,0]) {
        smoothSquare(4,1,h);
    }
    
     translate([3, ( size - 2 ) - r ,0]) {
        smoothSquare(4,1,h);
    }
    
     translate([ ( size - 2 ) - r, ( size - 2 ) - r , 0]) {
        smoothSquare(4,1,h);
    }
    
}

module cutOutTheArrow(x,y){
    
    translate([x,y,0]) cube([1,10,h]);
    translate([x + 1 , y + 2,0]) cube([1,6,h]);
    translate([x + 2, y - 2 ,0]) cube([4,14,h]);
    translate([x + 6, y + 2 ,0]) cube([4,6,h]);
    
    
    translate([x + 10,y + 4.35,0]) rotate([0,0,45]){
            cube([1,1,h]);  
           }
          
    translate([x + 3 ,y + 9 ,0]) rotate([0,0,-45]){
            cube([6,4,h]);  
           }
    
    translate([x + 6,y - 2 ,0]) rotate([0,0,45]){
            cube([6,4,h]);  
           } 
    
    
}


module cutOutTheArrowTwo(x,y){
    
    translate([x,y,0]) cube([1,10,h]);
    translate([x + 1 , y + 2,0]) cube([1,6,h]);
    
    //translate([x + 2, y - 2 ,0]) #cube([4,14,h]);
    
    translate([x + 2, y - 0.5 ,0]) cube([4.75,11,h]);
    
    
    translate([x + 6, y + 2 ,0]) cube([4,6,h]);
    
    
    translate([x + 10,y + 4.35,0]) rotate([0,0,45]){
            cube([1,1,h]);  
           }
          
    translate([x + 3 ,y + 9 ,0]) rotate([0,0,-45]){
            cube([6,4,h]);  
           }
    
    translate([x + 6,y - 2 ,0]) rotate([0,0,45]){
            cube([6,4,h]);  
           } 
    
    
}


/* START OF DESIGN */

difference(){

    smoothSquare(size,r,h);
    
    translate([size / 2.0 , size / 2.0 ,0]) cylinder(h,holeR,holeR);
    
    cutOutTheSquares();
    
    cutOutTheArrowTwo(0,10);
    
    rotate([0,0,-90]){
        cutOutTheArrowTwo(-30,10);
    }
    
    rotate([0,0,180]){
        cutOutTheArrowTwo(-30,-20);
    }
   
    
    rotate([0,0,90]){
        cutOutTheArrowTwo(0,-20);
    }
}