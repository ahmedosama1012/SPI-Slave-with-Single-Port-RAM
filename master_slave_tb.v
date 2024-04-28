module master_slave();
reg MOSI,SS_n,clk,rst_n;
 wire MISO; 
Master M1(SS_n,MOSI,MISO,clk,rst_n);
initial begin
    clk=1;
forever

   #1 clk=~clk;
end

initial begin
    rst_n=0;
    #5;
 rst_n=1;
//giving write address
SS_n=0;
@(negedge clk);
MOSI=0;
@(negedge clk);
   
   
repeat(2) 
  
  @(negedge clk) MOSI=0;
   
   
  

repeat(8) 
   
   @(negedge clk) MOSI=1;
#5;
SS_n=1;
#10;
// store data in ram at the address given before

SS_n=0;
@(negedge clk);
MOSI=0;
@(negedge clk);
   
   

  
  @(negedge clk) MOSI=0;
@(negedge clk) MOSI =1;
   
   
  

repeat(8) 
   
   @(negedge clk) MOSI=$random;
#5;
SS_n=1;
#10;
// giving address to read data from it
rst_n=1;
SS_n=0;
@(negedge clk);
MOSI=1;
@(negedge clk);
   
   

  
  @(negedge clk) MOSI=1;
@(negedge clk) MOSI =0;
   
   
  

repeat(8) 
   
   @(negedge clk) MOSI=1;
#5;
SS_n=1;
#10;
// Read data from the address given before  inside the RAM 
rst_n=1;
SS_n=0;
@(negedge clk);
MOSI=1;
@(negedge clk);
   
   

  
  @(negedge clk) MOSI=1;
@(negedge clk) MOSI =1;
   
   
  

repeat(8) 
   
   @(negedge clk) MOSI=0;
#24;
SS_n=1;
#10;
//  giving new write address 
SS_n=0;
@(negedge clk);
MOSI=0;
@(negedge clk);
   
   
repeat(2) 
  
  @(negedge clk) MOSI=0;
   
   
  

repeat(7) 
   
   @(negedge clk) MOSI=1;

   @(negedge clk) MOSI=0;   


#5;
SS_n=1;
#10;

   
 // write new data in the given address inside RAM
 SS_n=0;
@(negedge clk);
MOSI=0;
@(negedge clk);
   
   
 
  
  @(negedge clk) MOSI=0;
  @(negedge clk) MOSI=1;
   
   
  

repeat(4) 
   
   @(negedge clk) MOSI=1;
   
   repeat(4)
   @(negedge clk) MOSI=0;
   


#5;
SS_n=1;
#10;
//  taking read address
SS_n=0;
@(negedge clk);
MOSI=1;
@(negedge clk);
   
   
 
  
  @(negedge clk) MOSI=1;
  @(negedge clk) MOSI=0;
   
   
  

repeat(7) 
   
   @(negedge clk) MOSI=1;

   @(negedge clk) MOSI=0;   


#5;
SS_n=1;
#10; 
//read data from memory
SS_n=0;
@(negedge clk);
MOSI=1;
@(negedge clk);
   
   
repeat(2) 
  
  @(negedge clk) MOSI=1;
   
   
  

repeat(8) 
   
   @(negedge clk) MOSI=1;

#24;
SS_n=1;
#10;
SS_n=0;
#2;
SS_n=1;
#2;

   
   $stop;


    
end
endmodule