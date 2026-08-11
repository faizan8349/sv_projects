Swapping code of the element 
 

// Code your testbench here
// or browse Examples
// Code your design here
module m();
  
  int a[];
  
  int temp;
  
  initial 
    
    begin 
      
      a = new[100];
      
      
      foreach (a[i]) a[i]=i;
      
      foreach(a[i]) $display("%p",a[i]);
      
      
      for(int i=0; i<50; i++)
    
        begin 
          
        temp = a[i];
          a[i] = a[99-i];
          a[99-i]= temp;
          
        end 

          foreach(a[i])
            $display("%p",i,a[i]);
          
        
    
    end 
  
endmodule 


—------------------------------------------------------------------------------------------------------------module m();
  
  int A[100:1];
// for additional assignment examples
// fixed-size array of 100 elements 
int B[];
int C[] = new[8];

  initial 
    begin 
      
     B = A;
     
//       B = C;
      
//       B = new[C.size] (C);
      
      $display(B.size());
      
    end 
  
endmodule 
      


