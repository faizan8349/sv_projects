// // Code your design here
// package p1;

//   int a = 10;

//   function void f1();

//     $display("Inside p1");

//   endfunction

// endpackage


// package p2;

//   import p1::*;   // p2 imports all exported members of p1
//    export p1::*;
//   function void f2();

//     $display("a = %0d", a);

//     f1();

//   endfunction

// endpackage


// module top;

//   import p2::*;

//   initial begin
//    a=20;
//     $display("%d",a);
    
//     f1();

//     f2();
//   end

// endmodule
//
//
// ==================================================================//
//
//
// // // Code your testbench here
// // or browse Examples
// package p1;

// int a =10;

// function void f1();;

//   $display("inside the function f1 a=%d",a);

// endfunction

// endpackage

// package p2;

// int b=30;

// export p1::*;
// import p1::*;
// // export p1::*;


// function void f2();

//   $display("inside the function f2 b=%d",b);

// endfunction

// endpackage


// module m;

//   import p2::*;

//   initial begin

//     f1();
//     f2();

//     a=20;

//     $display("%d",b);

//   end

// endmodule
//
//
//// // Code your design here
// package p1;

//   int a = 10;

//   function void f1();

//     $display("Inside p1");

//   endfunction

// endpackage


// package p2;

//   import p1::*;   // p2 imports all exported members of p1
//    export p1::*;
//   function void f2();

//     $display("a = %0d", a);

//     f1();

//   endfunction

// endpackage


// module top;

//   import p2::*;

//   initial begin
//    a=20;
//     $display("%d",a);
    
//     f1();

//     f2();
//   end

// endmodule
//
