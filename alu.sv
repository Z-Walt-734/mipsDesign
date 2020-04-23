
//Creates module 

module alu(A,b,F,y,Z); 

//Declares inputs and outputs of the circuit 
// Cleaned up to be verilog instead of systemverilog
input [31:0] A,b; 

input [2:0] F; 

output logic [31:0] y; 

output Z; 

logic [31:0] sum, alu_out;  

//Assigns other ports that will make the circuit work properly                    

assign alu_out = F[2]?~b:b;                                                                                                                                           

assign sum =  A + alu_out + F[2];                                                                                                                                   

always@(*) 

//Gives different states of the circuit based on what value it is on 

	case(F[1:0])       
	//removed F[2] since not neccessary
	// removed second half of case since redundant                                                                                                                                

		3'b00:y=A&alu_out;                                                                                                                         

		3'b01:y=A|alu_out;                                                                                                                                          

		3'b10:y=sum;                                                                                                                                                 

		3'b11:y=sum[31];  
	  

	//Terminates case statement                                                                                                                                                

	endcase 

assign Z=(y==0);// if y is 0 Z=1(true), y is 1 Z=0(false) 

//terminates module 

endmodule 



 

 