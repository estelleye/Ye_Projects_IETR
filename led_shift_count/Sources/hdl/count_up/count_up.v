//////////////////////////////////////////////////////////////////////////////
// Board: ZedBoard Zynq Evaluation and Development kit 
// Device: xc7z020-1-clg484
// Design Name: module_count
// Purpose: Partial Reconfiguration Tutorial
///////////////////////////////////////////////////////////////////////////////
// Reconfigurable Module: module_count
// Binary count up visable on 4 LEDs
//////////////////////////////////////////////////////////////////////////////

module count (
   rst,
   clk,
   count_out
);

   input rst;                // Active high reset
   input clk;                // 100MHz input clock
   output [3:0] count_out;   // Output to LEDs

   reg [24:0] count;
   reg [3:0]  count_out;
   reg [3:0]  count_en = 4'b0101;  // Special init register to test REST_AFTER_RECONFIG(aka GSR)

   //Counter to reduce speed of output
   always @(posedge clk)
      if (rst) begin
         count <= 0;
      end
      else begin
         count <= count + 1;
      end

    always @(posedge clk)
      if (rst)
         count_out <= 4'b0000;
      else begin
         if (count == 25'b1111111111111111111111111 && count_en == 4'b0101) begin
            count_out <= count_out + 1;
         end
      end
endmodule