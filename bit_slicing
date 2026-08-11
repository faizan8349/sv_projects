// // Code your design here
// class a;
  
//   rand int bus;
// endclass 

// module top ;

//   initial 
//     begin 
      
//   a a1[];
  
//   a b;
  

      
//       a1=new[10];
      
//       foreach (a1[i])
//         begin 
          
//                 b=new();
      
//       b.randomize();
//           a1[i]=b;
          
//           $display("%d",i,a1[i]);
//         end 
      
//     end 
  
// endmodule 
//—-------------------------------------------------------------------------------------------------------------
// class a;
  
//   rand int c;
  
// endclass 

// module m;
  
//   initial 
//     begin 
      
//       a a1[$];
//       a b;
     
// //       a1=new[15];
      
//        b=new();
      
//       foreach(a1[i])
        
//         begin 
          
          
//           b.randomize;                        //if we use randomize and object creation outside the foreach loop then only same value will come 
          
//           a1.push_back(b);
          
//           $display("%d",i,a1[i]);
          
//         end 
//     end 
  
//       endmodule 

//  ---------------------------------------------------------------------------------------
// class a;
//   int aa=10;
// endclass 

// class b;
//   int bb=20;
// endclass 

// class c;
//   int cc=30;
// endclass 

// class a1 extends a;
//   int a11;
// endclass 

// class b1 extends b;
//   int b11;
// endclass 

// class c1 extends c;
//   int c11;
// endclass 

// class base_class #(type a_1 = a, b_1 = b ,c_1 = c);
  
//  a_1 a_11;
//  b_1 b_11;
//   c_1 c_11;
//   function new();
    
//     a_11=new();
//     b_11=new();
//     c_11=new();
  
//   endfunction 
    
//   function void f1();
    
//     $display("%d,%d,%d",a_11.aa,b_11.bb,c_11.cc);
  
//     endfunction 
  
// endclass
  
//   class my_class extends base_class #( a1 ,b1 ,c1);
    
//     function new();
      
//     a_11.a11=40;
//     b_11.b11=50;
//     c_11.c11=60;
    
//     endfunction
    
//     function void f1();
      
//       super.f1();
      
//       $display("%d,%d,%d",a_11.a11,b_11.b11,c_11.c11);
      
//     endfunction 
    
// endclass
  
//   module m();
    
//     my_class my_1;
    
//     initial 
//       begin 
        
//         my_1 =new();
       
//         my_1.f1();
        
//       end 
    
//   endmodule 
        
//   ----------------------------------------------------------------------------------
// Code your design here
// module m;
  
//   bit [31:0]a = 12345 ;
//   bit [7:0]b[] ;
  
//   initial begin 
    
//     b=new[4];
// //     a.randomize();
    
//     $display("%d",a);
    
//     for(int i=0;i<4;i++)
//       begin 
        
//         b[i]=a[i*4+3+:4];
        
//         $display("%d",i,b[i]);
        
//       end 
    
//   end 
  
// endmodule 
// //—----------------------------------bit slicing operator --------------------------------------------------------------

// // Code your design here
// module m;
//   bit [31:0] a=32'b11110000_11100011_11111000_11100000;
//   bit [7:0] b[];
  
//   initial 
//     begin 
      
//       b=new[4];
      
//       for(int i=0;i<4;i++)
//         begin 
//           b[i]=a[i*8+:8];
          
//         end
//       foreach(b[i])
//         $display("b[%0d]=%b",i,b[i]);
//     end 
  
// endmodule 
          
  
// //—-------------------------------------------------------------bit slicing with negative bit slicing —------------

// // // Code your design here
// module m;
//   bit [31:0] a=32'b11110000_11100011_11111000_11100000;
//   bit [7:0] b[];
  
//   initial 
//     begin 
      
//       b=new[4];
      
//       for(int i=0;i<4;i++)
//         begin 
//           b[i]=a[31-i*8-:8];                                 // and also you can do ( b[i]=a[i*8-:8])
          
//         end
//       foreach(b[i])
//         $display("b[%0d]=%b",i,b[i]);
//     end 
  
// endmodule 
         
  
      


