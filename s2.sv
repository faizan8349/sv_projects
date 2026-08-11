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
  




