// // Code your design here
// `define mux(a,b)((a)>(b))?(a):(b);

// module m;
  
//   int a,b,y;
  
//   initial 
//     begin 
      
//       y= `mux(6,9);
      
//       $display("y=%d",y);
      
//     end 
  
//   initial 
//     $display("%m");
  
// endmodule 

// module e;
  
//   m m1();
  
//   int a=10 ;
  
//   initial 
//     begin 
      
//       `ifdef mux;
      
//       $display ("mux is running in which value of a =%d",a);
      
//       `else 
      
//       $display("value is out of the box ");
      
//       `endif 
      
//     end 
  
// endmodule 

//-----------------------------next code while giving the expression inside the compiler directives -----

// `define ex(a)((x)?((x>15)?(x+4):(x-4)):(!x))

// module m;
  
//   int x,b;
  
//   initial 
    
//    begin 
//      x=30;
     
//      b= `ex(x);
     
//      $display("b=%d",b);
     
//    end 
  
// endmodule 

// =============================================================================



// // Code your design here
// `define mux;
// `define decoder;

// module mm;

//   reg a,b,s,out;

//   always
//     begin

//       case (s)
//         1'b0: out=a;
//         1'b1: out=b;

//         default: out=1'bx;

//       endcase

//     end
//   initial

//     $display("%m");


//       endmodule



// module d ();
//     logic [1:0] a;
//   logic [3:0] y;

//     always_comb begin
//         case (a)
//             2'b00: y = 4'b0001;
//             2'b01: y = 4'b0010;
//             2'b10: y = 4'b0100;
//             2'b11: y = 4'b1000;
//             default: y = 4'b0000;
//         endcase
//     end

// endmodule

//       module m;

//         mm m1();
//         d d1();
//         initial
//           begin


//             `ifdef mux1

//         $display("code inside mux run ");

//             `elsif decoder1;

//             $display("code inside the decoder run ");

//             `else

//             $display("none of the code running");

//             `endif


//           end

//       endmodule



// Code your testbench here
// // or browse Examples
// `define mux
// `define adder ;

// module mux;

//   reg a,b,c,d,s0,s1,y;

//   initial
//     begin

//   case ({s0,s1})


//           2'b00: y=a;
//           2'b01: y=b;
//           2'b10: y=c;
//           2'b11: y=d;

//       default: y=1'bx;


//   endcase

//     end

//   initial
//     $display("%m");

// endmodule

// module adder;

//   reg a,b;
//   wire sum,carry;

//     mux m1();

//  assign sum=a^b;
//   assign carry = a+b;

// endmodule

// module mm;


//   adder ad();

//   initial
//     begin


//             `ifdef mux

//         $display("code inside mux run ");

//             `elsif decoder;

//             $display("code inside the decoder run ");

//             `else

//             $display("none of the code running");

//             `endif

//     end

// endmodule


