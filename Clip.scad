
$fn = 64;

length = 10;

connector = 0;

r = 1.5;

difference(){

        translate(  [ 0, 0, 0 ] ) cube ( [ length , 20 , 12 ] );
    
        translate(  [ 0 , 2, 0 ] ) cube ( [ length , 7 , 8 ] ); 
  
        translate(  [ 0 , 11, 0 ] ) cube ( [ length , 7 , 8 ] ); 
   
        translate(  [ 0 , 9 , 0 ] ) cube ( [ length , 7 , 6 ] );  
       
        translate(  [ 5, 10, 8 ] )  cylinder( 8 , r , r );
       
        translate(  [ 5, 10, 6 ] )  cylinder( 5 , 3.25, 3.25);
    
    
    
}
 

    translate(  [ 0, 0, 12 ] ) cube ( [ 1 , 20 , 3 ] );

    translate(  [ length - 1 , 0, 12 ] ) cube ( [ 1 , 20 , 3 ] );
    

difference(){
    translate(  [ 5, 10, 12 ] )  cylinder( 1 , 4 , 4 );
    
    translate(  [ 5, 10, 12 ] )  cylinder( 1 , r , r );
    
}