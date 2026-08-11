// module m;
  
//   logic [31:0] a;
//    int b;
  
//   initial 
//     begin 
      
//       a= 32'h aabbccdd;
      
      
// //       b= new[4];
      
//       b = {<<8 {a}};
      
// //       foreach (b[i])
//       $display("b=%0h",b);
      
//     end 
  
// endmodule 


// ================================================stream operator ===================

module m;
  int a;

  byte b[];
  
  initial 
    begin
     
      
      b=new[4];
      
      b[0]=8'h ab;
      b[1] = 8'h cd;
      b[2] = 8'h ee;
      b[3] = 8'h ff;
      
      
      a = {>>{b}};
      
      foreach(b[i])
        $display("%h",b[i]);
      
      $display("%h",a);
      
    end 
  
endmodule


// // Code your testbench here
// // or browse Examples
// // Code your testbench here
// // or browse Examples
// module m;
//   byte a[];
//   bit [32:0] b;
  
//   initial 
//     begin 
      
//       a=new[4];
      
//       a[0]=8'h aa;
//       a[1]=8'h bb;
//       a[2]=8'h cc;
//       a[3]=8'h dd;
      
//       b = {>>{a}};
//       foreach(a[i])
//         $display("%b",a[i]);
      
//       $display("%b",b);
      
//     end 
  
  
// endmodule 
      
// ==========================stream operator ===========
// module m;
  
//   int a=32'h ABCDEF12;
//   int b;
  
//   initial 
//     begin 
      
//       b= {<<12 {a}};
//       $display("%h",b);
      
//     end 
  
// endmodule 


// —---------------------------------------------------------reverse order—----------------------------------------------


// module m;
  
//   int a=32'h ABCDEF12;
//   int b;
  
//   initial 
//     begin 
      
//       b= {<<4 {a}};
//       $display("%h",b);
      
//     end 
  
// endmodule 


// —----------------------------------------------------------$increament—----------------------------------------------

// // Code your design here
// // Code your design here
// module m;
  
//   logic [9:0] a;
//   byte b;
  
//   initial 
//     begin 
//       a=10;
      
//       $display("%d",a);
      
//       $display("%d",$increment(a));
      
//     end 
  
// endmodule 


// =--------------------------------------------------------MODULUS OPERATOR —--------------------------------


// // Code your testbench here
// // or browse Examples
// module m;
  
//   int a=5;
//   int b=3;
//   int c ;
  
//   initial 
//     begin 
      
//       c=b%a ;
      
// //       b= {<<4 {a}};
//       $display("%d",c);
      
//     end 
  
// endmodule 




 
