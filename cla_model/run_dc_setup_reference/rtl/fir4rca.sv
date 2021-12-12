// ECE260A Lab 3
// keep the same input and output and the same input and output registers
// change the combinational addition part to something more optimal
// refer to Fig. 11.42(a) in W&H 
module fir4rca #(parameter w=16)(
  input                      clk, 
                             reset,
  input         [w-1:0] a,
  output logic  [w+1:0] s);
// delay pipeline for input a
  logic         [w-1:0] ar, br, cr, dr;

// CUSTOM CARRY ADDER LOGIC 

  logic         [w-1:0] p1, p2, g1, g2;
  logic         [w-1:0] s1,  s2; 
  logic         [w  :0] c1, c2;
  logic         [w  :0] sum1, sum2;
  logic			[w	:0] p3, g3, s3;
  logic         [w+1:0] c3;
  logic         [w+1:0] sum;
  


  always_comb begin
    c1[0] = 0;



    for(int i = 0; i < w; i++) 
      begin
        g1[i] = ar[i] & br[i];
        p1[i] = ar[i] ^ br[i];
        c1[i + 1] = g1[i] | (p1[i] & c1[i]);
        s1[i] = p1[i] ^ c1[i];
      end
    sum1 = {c1[w], s1};
  end
  always_comb begin
        c2[0] = 0;
    for(int j = 0; j < w; j++) 
      begin
        g2[j] = cr[j] & dr[j];
        p2[j] = cr[j] ^ dr[j];
        c2[j + 1] = g2[j] | (p2[j] & c2[j]);
        s2[j] = p2[j] ^ c2[j];
      end
    sum2 = {c2[w], s2};
  end
  always_comb begin
        c3[0] = 0;
    for(int k = 0; k < w + 1; k++)
      begin
        g3[k] = sum1[k] & sum2[k];
        p3[k] = sum1[k] ^ sum2[k];
        c3[k + 1] = g3[k] | (p3[k] & c3[k]);
        s3[k] = p3[k] ^ c3[k];
      end
    sum = {c3[w+1], s3};
  
  end


// END OF CUSTOM CARRY ADDER

// sequential logic -- standardized for everyone
  always_ff @(posedge clk)			// or just always -- always_ff tells tools you intend D flip flops
    if(reset) begin					// reset forces all registers to 0 for clean start of test
	  ar <= 'b0;
	  br <= 'b0;
	  cr <= 'b0;
	  dr <= 'b0;
	  s  <= 'b0;
    end
    else begin					    // normal operation -- Dffs update on posedge clk
	  ar <= a;						// the chain will always hold the four most recent incoming data samples
	  br <= ar;
	  cr <= br;
	  dr <= cr;
	  s  <= sum; 
	end

endmodule
