// //  ===========================disable fork is not working ============================ 

// module m;
  
//   int a ;
  
//   initial 
    
// begin       
//           fork :first
        
//       #20  $display("inside the first fork join",$time);
        
      
//         #10 $display("value of a=%0d",a,$time);
        
//       join_none 
      
          
       
//           fork :second 
        
//        #12 $display("inside the 2nd fork join a=%0d",a,$time);
//        #15 $display("inside the 2nd fork join 2nd display a=%0d",a,$time);
        
        
        
//       join_none
      
//       $display("outside th 2nd fork join",$time);
      
        
          
          
//       fork :third
        
// //         #10;
//        #10 $display("inside the 3rd fork join",$time);
// //         
// //         #12;
        
//        #12 $display("inside the 3rd fork join",$time);
        
//       join_none 
      
//           $display("outside the fork join 3rd fork join ");
        
          
        
//       $display("outside the fork join ",$time);
      
        
        
      
//        #9 disable fork ;

//          end 
         
// endmodule 
// ========================================fork join inside the for loop ===
//  module m;
  
//   int a;
  
//   initial 
//     begin 
      
      
        
//         for(int i=0;i<3;i++)
        
           
                
//           fork  
//           begin 
//             $display("value of i=%0d",i,$time);
//           end 
        
//           join_none 
      
      
//       $display("outside the for loop");
      
     
          
//     end 
      
// endmodule 
  

// ========================================correction of fork join inside the for loop== ==

// module m;
  
//   int a;
  
//   initial 
//     begin 
      
      
        
//         for(int i=0;i<3;i++)
        
//           begin
           
//           automatic int j=i;
      
//           fork  
//           begin 
//             $display("value of j=%0d",j,$time);
//           end 
        
//           join_none 
      
//           end 
      
//       $display("outside the for loop");
      
     
          
//     end 
      
// endmodule 
          
          
//           ==================================== for loop inside fork join ==
      
      
// module m;
  
//   int a;
  
//   initial 
//     begin 
      
      
//         fork 
          
//         for(int i=0;i<3;i++)
           
//           begin 
//           $display("value of i=%0d",i,$time);
//           end 
        
//           join_none 
      
//       $display("outside the for loop");
      
     
      
//     end 
      
// endmodule 
          

// ================================using always block convert fork join_any or join_none to join ====================

// module m;
  
//   semaphore s1;
  
// //   int a;
//   initial 
      
//     begin
    
//       s1=new(1);
      
//           fork 
            
//            begin
             
// //              s1.get();
             
             
//         for(int i=0;i<3;i++)
    
//           begin 
//           $display("value of i=%0d",i,$time);
        
//           end 
                   
//             end 
            
//             begin 
            
              
//               s1.get(); 
              
//                $display("insdie the fork join but outside the for loop ");
            
//               s1.put();
//             end 
            
            
//           join_any 
 
// //       #10;
      
      
//       $display("outside the for loop",$time);
      
     
      
//     end 
      
// endmodule 
   
// ===========================*code not resolved* ====================


// // Code your testbench here
// // or browse Examples
// module m;
  
//   int a ;
  
//   initial 
    
//     begin 
//       fork
      
//       fork : first_fork
        
//         $display("inside the first fork join",$time);
        
//       begin 
//         #10 $display("value of first fork join  a=%0d",a,$time);
//       end 
        
//       join 
      
//       fork : second_fork
        
//         $display("inside the 2nd fork join a=%0d",a,$time);
//         $display("inside the 2nd fork join 2nd display a=%0d",a,$time);
        
        
        
//       join_any
      
//       $display("outside th 2nd fork join",$time);
      
      
//       fork : third_fork
        
// //         #10;
//         $display("inside the 3rd  fork ",$time);
// //         
// //         #12;
        
//         $display("at the end side of 3rd fork",$time);
        
//       join_none
      
//       disable third_fork;
        
//       $display("outside the fork join ",$time);
      
      
//       join
//     end 
  
// endmodule 
      
// add new updates there 
//
//
// the file has been updated and it will assign to the new  branch 
// i 
