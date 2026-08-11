 // //                        —----------------------------------------passing the values to by arguments in direct the time of object creation 

// class a;
//   int data;
//   byte b;
  
//   function new(int f,byte c);
  
    
//         data=f;
//         b= c;
     
//       endfunction 
  
// endclass 

// module m;
  
//   a a1;
  
//   initial 
//     begin 
      
//       a1=new(30,7);
      
//       $display("%d,%d",a1.data,a1.b);
//     end 
  
// endmodule 


// //—---------------------------------------------------------------------------------------------------------------------------
// // Parameter of the class and also using of super keyword and also casting and compatible of the code and size should be so at the time of handle creation size of the class match with extended class 




// class c #(type t =int  , size=10);
//   t a =size;
  
//   byte b=20;
  
//   virtual function void f1();
    
//     $display("%d,%d",a,b);
    
//   endfunction
  
// endclass 

// class d extends c  #(int,2);
  
  
//   t a= size;
//   byte b=40;
  
  
//   function void f1();
//     super.f1();
    
//     $display("%d,%d",a,b);
    
//   endfunction 
  
// endclass

//   module m;
    
//     c #(int,2) cc;
//     d d1,d2;
    
//     initial 
//       begin 
        
//         d1= new();
//         cc=d1;
        
//        $cast(d2,cc);
        
//         d2.f1;
       
        
//       end 
    
//   endmodule 
//   //  —--------------------------------------------------------------------------- different different ways of parameter using inside the module 


// class c #(type t=int , size =10,value =20);
  
//   t a = size ;
  
// virtual  function void f1();
   
    
//   $display("a=%d",a);
    
//   endfunction
  
// endclass 

// class d extends c#(bit[3:0],10,06);
  
//   t b =value ;
  
//   function void f1();
    
//     super.f1();
    
//     $display("b=%d",b);
    
//   endfunction 
  
// endclass 
  
// module m;
  
//   d  d1;
  
//   c c1;
  
//   initial 
//     begin 
      
//       d1=new ;
     
     
      
//       d1.f1();
      
//     end 
  
// endmodule 

    



