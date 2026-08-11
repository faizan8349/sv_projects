// Code your design here
//                        —----------------------------------------passing the values to by arguments in direct the time of object creation 

class a;
  int data;
  byte b;
  
  function new(int f,byte c);
  
    
        data=f;
        b= c;
     
      endfunction 
  
endclass 

module m;
  
  a a1;
  
  initial 
    begin 
      
      a1=new(30,7);
      
      $display("%d,%d",a1.data,a1.b);
    end 
  
endmodule 


//—---------------------------------------------------------------------------------------------------------------------------
Parameter of the class and also using of super keyword and also casting and compatible of the code and size should be so at the time of handle creation size of the class match with extended class 




class c #(type t =int  , size=10);
  t a =size;
  
  byte b=20;
  
  virtual function void f1();
    
    $display("%d,%d",a,b);
    
  endfunction
  
endclass 

class d extends c  #(int,2);
  
  
  t a= size;
  byte b=40;
  
  
  function void f1();
    super.f1();
    
    $display("%d,%d",a,b);
    
  endfunction 
  
endclass

  module m;
    
    c #(int,2) cc;
    d d1,d2;
    
    initial 
      begin 
        
        d1= new();
        cc=d1;
        
       $cast(d2,cc);
        
        d2.f1;
       
        
      end 
    
  endmodule 
  //  —--------------------------------------------------------------------------- different different ways of parameter using inside the module 


class c #(type t=int , size =10,value =20);
  
  t a = size ;
  
virtual  function void f1();
   
    
  $display("a=%d",a);
    
  endfunction
  
endclass 

class d extends c#(bit[3:0],10,06);
  
  t b =value ;
  
  function void f1();
    
    super.f1();
    
    $display("b=%d",b);
    
  endfunction 
  
endclass 
  
module m;
  
  d  d1;
  
  c c1;
  
  initial 
    begin 
      
      d1=new ;
     
     
      
      d1.f1();
      
    end 
  
endmodule 

    

—---------------------------------------------------------polymorphism code with parameter class 

// Code your design here
// Code your de
class c #(type t =int, j= bit[3:0] ,int  size=10, int value=10);
  
  t a =size;
  j b = size;
  j k= 30;
  j l =15;
  
  virtual  function void display();
    $display("a=%d,b=%d,k=%d,l=%d",a,b,k,l);
                 
               endfunction 
//   function new();
    
//     a=20;
//     b=30;
    
//   endfunction 
  
  virtual function void f1();
    $display("a=%d",a);
  endfunction 
  
  virtual function void f2();
    $display("b=%d",b);
  endfunction 
  
  virtual function void f3();
    $display("k=%d",k);
  endfunction 
  
  virtual function void f4();
    $display("l=%d",l);
   endfunction 
     
 endclass 

class d extends c #( byte,byte,30,40);             
    
  byte  a= value; 
   byte b = value;
   byte k= 46;
  byte l = 48;
  function void display();
    super.display();
    $display("a=%d,b=%d,k=%d,l=%d",a,b,k,l);
                 
               endfunction 
            
//                function new();
                 
//                  a=50;
//                  b=60;
//                endfunction 
               
               
  
   function void f1();
    super.f1();
    $display("a=%d",a);
  
  endfunction 
  
   function void f2();
    super.f2();
    $display("b=%d",b);
  
             endfunction 
  
   function void f3();
    super.f3();
    $display("k=%d",k);
  
  endfunction 
  
   function void f4();
    
    super.f4();
    $display("l=%d",l);
   
  endfunction                
endclass 
    
             module m;
               c c1;
               d d1,d2;
               
               
               initial 
                 begin 
                   
                   d1= new();
                   
                  
                   
                  
                   
                   d1.display();
                   d1.f1();
                   d1.f2();
                   d1.f3();
                   d1.f4();
                   
                 end 
             endmodule 


—-----------------------------------------------------------parameter by using casting —--------------

// Code your design here
// Code your de
class c #(type t =int,type j= bit[3:0] ,int  size=10, int value=10);
  
  t a =size;
  j b = size;
  j k= 30;
  j l =15;
  
  virtual  function void display();
    $display("a=%d,b=%d,k=%d,l=%d",a,b,k,l);
                 
               endfunction 
//   function new();
    
//     a=20;
//     b=30;
    
//   endfunction 
  
  virtual function void f1();
    $display("a=%d",a);
  endfunction 
  
  virtual function void f2();
    $display("b=%d",b);
  endfunction 
  
  virtual function void f3();
    $display("k=%d",k);
  endfunction 
  
  virtual function void f4();
    $display("l=%d",l);
   endfunction 
     
 endclass 

class d extends c #( byte,byte,30,40);             
    
  t a= value; 
  t b = value;
  j k= 46;
  j l = 48;
  function void display();
    super.display();
    $display("a=%d,b=%d,k=%d,l=%d",a,b,k,l);
                 
               endfunction 
            
//                function new();
                 
//                  a=50;
//                  b=60;
//                endfunction 
               
               
  
   function void f1();
    super.f1();
    $display("a=%d",a);
  
  endfunction 
  
   function void f2();
    super.f2();
    $display("b=%d",b);
  
             endfunction 
  
   function void f3();
    super.f3();
    $display("k=%d",k);
  
  endfunction 
  
   function void f4();
    
    super.f4();
    $display("l=%d",l);
   
  endfunction                
endclass 
    
             module m;
               c  #( byte,byte,30,40) c1;
               d d1,d2;
               
               
               initial 
                 begin 
                   
                   d1= new();
                   
                  c1=d1;
                   
                   $cast(d2,c1);
                   
                  
                   
                   d2.display();
                   d2.f1();
                   d2.f2();
                   d2.f3();
                   d2.f4();
                   
                   
                   
                 end 
             endmodule 
                   
  
  —-----------------------------------------------------------local protected keyword —----------------with parameter class and this keyword —---------------

// Code your design here
class c #(type t=int,size 20 );
  
  local t a =size ;
  
  protected t b;
  
  function int display(int a,b);
    a=10;
    b=80;
    
    
    this a=a;
    this b=b;
    
    $display("a=%D,a=%d",a,b);
    
  endfunction 
    
  function new();
    
    b = size*(size);
    
  endfunction 
  
  function void f1();
    
    $display("%D",a);
    $display("%d",b);
    
  endfunction 
  
endclass 

class d extends c #(byte,30);
  
  t j = size 
  t k = size 
  
  function int display(int j,k);
   j=15;
    k=18
    
    this j=j;
    this k=k;
    
    super.display();
    
  endfunction 
  
  function void f1();
 
    super.f1();
    
    $display("%D",a);
    $display("%d",b);
    
    $display("a=%d,b=%d",super.a,super.b);
    
  endfunction 
  
  
    module m;
      c c1;
      d d1;
      
      initial 
        begin 
          
          d1=new();
          
          d1.display();
          d1.f1();
end 
endmodule

—--------------------------------------------------------------------------------===============    


                   
  
  
    



