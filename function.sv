// ==================================function datatype as a DA ===return as a DA======

// module m;
//   typedef int a[] ;
  
//   function a f1(int c,d);
    
//     a a1;
    
//     a1=new[3];
    
//     a1[0]= c-d;
//     a1[1]=c+d;
//     a1[2]=c*d;
    
//     return a1;
    
//   endfunction 
  
//   initial 
//     begin 
      
//       a a2;
      
//       a2=f1(12,10);
      
//       $display("values of a2=%p",a2);
      
//     end 
  
// endmodule 

// ================================ Function inside the AA return as a AA ==========

// module m;
  
//  typedef  int a[string];
  
//   function a f1(int c,d);
//     a a1;
    
//     a1["addition"]= c+d;
//     a1["subtraction"]=c-d;
//     a1["multiplication"]=c*d;
//     a1["division"]=c/d;
    
//     return a1;
    
//   endfunction 
  
//   initial 
//     begin 
      
//       a a2;
      
//       a2 = f1(130,15);
      
//       $display("value of a2=%p",a2);
      
//     end 
  
// endmodule 



// ===================================================using of associative 
// /array in different way ====================


// module m;
  
//    int a[string];
  
//   function int f1(int c,d);
    
    
//     a["addition"]= c+d;
//     a["subtraction"]=c-d;
//     a["multiplication"]=c*d;
//     a["division"]=c/d;
    
// //     return a;
    
//   endfunction 
  
//   initial 
//     begin 
      
     
      
//         f1(130,15);
      
//       $display("value of a=%p",a);
      
//     end 
  
// endmodule 


// =======================Queue as iniside the function and return inside the function 


// module m;
  
//  typedef int a[$];
  
//   function a f1();
//     a a1;
    
//     for(int i=0;i<4;i++)
//       begin 
        
//         a1[i]= {i*10};
    
// //     a1={10,20,30};
//       end 
    
//     return a1;
    
//   endfunction 
  
//   initial 
//     begin 
      
// //       a a2;
      
//       a2= f1();
      
//       $display("value of a2=%p",a2);
      
//     end 
  
// endmodule 
  




// ==============================function inside module called inside fork join_none ================//

  
//module m;
  
//   int a;
  
//   function automatic int f1();
    
//     int a;
    
//     a++;
    
//     $display("a=%d",a);
    
//   endfunction 
  
//   initial 
//     begin 
      
//       fork
        
//         f1();
//         f1();
//         f1();
        
//       join_any
   
//       fork
//         f1();
        
//       join_any
//     end 
  
// endmodule 


// =======================function declared inside class called inside module in fork join_any 

// class c ;
  
  
//   int a;
  
//  static function static   int f1();
    
//     int a;
    
//     a++;
    
//     $display("a=%d",a);
    
//   endfunction 
  
// endclass 

// module m;
//   c c1;
  
  
//   initial 
//     begin 
  
// //       c1=new;
      
//       fork
        
//         c1.f1();
//         c1.f1();
//         c1.f1();
        
//       join_any
   
//       fork
//         c1.f1();
        
//       join_any
//     end 
  
// endmodule
//
// // ======================task called inside the function ===========
// module m;

//   int a;



//       task t1();

//         begin

//           int a=9;

//         a=a+2;

//         $display("a=%d",a);

//         end


//       endtask


//       function void f1();

//         fork

//           t1();

//         join_none

//       endfunction

//   initial
//       f1();


// endmodule


// ==========================while giving delays inside the task ========


// module m;

//   int a;



//       task t1();

//         begin

//           int a=9;

//         a=a+2;

//         $display("a=%d",a);

//         end


//       endtask


//       function void f1();

//         fork
//          #2 t1();
//         join_none

//       endfunction

//   initial
//       f1();


// endmodule


// ====================================calling task inside function without fork join_none ===================


// module m;

//   int a;



//       task t1();

//         begin

//           int a=9;

//         a=a+2;

//         $display("a=%d",a);

//         end


//       endtask


//       function void f1();


//           t1();


//       endfunction

//   initial
//       f1();


// endmodule


// ===================================== explicitly and imlicitly declared automatic keyword inside the task and function============================


// module m;

//   int a ;

//   function int f1();

//    automatic  int a,b;

//     automatic  int c=0;

//     c++;



//     $display("c=%d",c);

//     a++;
//     b++;

//     c =a+b;

// $display("c=%d",c);


//   endfunction

//   initial
//     begin

//     f1();

//     f1();

//     f1();

//     end
// endmodule

// ==============================function explicitly defined the automatic keyword ======


// module m;

//   int a ;

//   function automatic int f1();

//     int a,b;

//     int c=0;

//     c++;

//                                      //either the variable got automatic or                                         the function got the automatic both                                            gives the same values

//     $display("c=%d",c);

//     a++;
//     b++;

//     c =a+b;

// $display("c=%d",c);


//   endfunction

//   initial
//     begin

//     f1();

//     f1();

//     f1();

//     end
// endmodule

// ================================== imlpicitly defined the automatic keyword===

// class c ;

//    int a;

//   static function   void f1();

//     int a ;

//     a++;

//     $display("a=%d",a);

//   endfunction

// endclass

// module m;

//   c c1;

//   initial
//     begin
// //       c1=new();

//       c1.f1();
//       c1.f1();
//       c1.f1();
//       c1.f1();

//     end

// endmodule


// ================================combination 2 ==============


// class c ;

//    int a;

//    function  static  void f1();

//     int a ;

//     a++;

//     $display("a=%d",a);

//   endfunction

// endclass

// module m;

//   c c1;

//   initial
//     begin
//        c1=new();

//       c1.f1();
//       c1.f1();
//       c1.f1();
//       c1.f1();

//     end

// endmodule

// =================================== condition 3 ==================

// module m;

//   int a ;
//     static function automatic  int f1();

//       int a,b;

//       int c=0;

//     c++;



//     $display("c=%d",c);

//     a++;
//     b++;

//     c =a+b;

// $display("c=%d",c);


//   endfunction

//   initial
//     begin

//     f1();

//     f1();

//     f1();

//     end
// endmodule

// =========================== function pass another function while calling the function  ========;

//  module m;

//    int a;

//    function int  f1(int a,b);


//      return a+b;

//    endfunction


//    function int  f2(int c,d);


//      return c*d;

//    endfunction


//    function int  add(int f1,f2);


//      return f1+f2;

//    endfunction

//    initial

//      begin
//         add(f1(3,4),f2(5,6));

//        $display("%d", add(f1(3,4),f2(5,6)));
//        $display("%d,%d", f1(3,4),f2(5,6));
// //    $display("a=%d",a);
//    end

//  endmodule



// =================================call function inside the other function====second method ======

//  module m;

//    int a;

//    function int  f1(int a,b);


//      return a+b;

//    endfunction


//    function int  f2(int c,d);


//      return c*d;

//    endfunction


//    function int  add(int f1,f2);


//      return f1+f2;

//    endfunction

//    initial

//      begin
//      a   =   add(f1(3,4),f2(5,6));

//    $display("a=%d",a);
//    end

//  endmodule

// ====================================== function take class datatype =======

//  class c ;

//    int a ;

//    function static  c f1();

//      int a=20 ;

//      a++;

//      $display("a=%d",a);

//    endfunction

//  endclass


// module m;

//   c c1;

//   initial
//     begin

//       c1=new;

//       c1.f1;
//       c1.f1;
//       c1.f1;
//       c1.f1;
//     end

// endmodule


// // ========================function take class arg and return type also class ====
// class c;

//   int a;

// endclass

// module m;

//   c c2;
// //   c c3;

//   function c f1(c c1);

//     c1.a=c1.a+3;

//     $display("c1=%d",c1.a);

// //     return c1;

//   endfunction

//   initial
//     begin

//     c2=new();

//   c2.a++;

//       $display("c2=%d",c2.a);


//       f1(c2);

// //       $display("c1=%d",c.a);


//     end

// endmodule


// ==================================factorial function

//   module m;


//     function automatic int f1();

//       int result ;

//       for (int i=1; i<5; i++)
//         begin

//           result *= i;
//           $display("%d,result =%d",i,result);
//         end

//           return result;


//           endfunction

//     initial
// begin

//   $display("%d",f1());
// end
//           endmodule



// module m;

//   function automatic int f1();

//     int result = 1;

//     for (int i = 1; i <= 5; i++) begin
//       result *= i;
//       $display("i=%0d result=%0d", i, result);
//     end

//     return result;

//   endfunction

//   initial begin
//     $display("Factorial = %0d", f1());
//   end

// endmodule


// module m;

//   function automatic int f1();

//     int result = 1;

//     for (int i = 1; i <= 5; i++) begin
//       result *= i;
// //       $display("i=%0d result=%0d", i, result);
//     end

//     return result;

//   endfunction

//   initial begin
//     $display("Factorial = %0d", f1());
//   end

// endmodule


// =============================


// module m;

//   function automatic int f1();

//     int result = 1;

//     for (int i = 1; i <= 5; i++) begin

//       result *= i;
 
//       $display("i=%0d result=%0d", i, result);

//     end

//     return result;

//   endfunction

//   initial begin
  
//     $display("Factorial = %0d", f1());
  
//   end

// endmodule






