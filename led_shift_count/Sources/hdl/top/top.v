//////////////////////////////////////////////////////////////////////////////
// Board: ZedBoard Zynq Evaluation and Development kit 
// Device: xc7z020-1-clg484
// Design Name: led_shift_count_gsr
// Purpose: Partial Reconfiguration Tutorial
///////////////////////////////////////////////////////////////////////////////
//
//Project     : led_shift_count_gsr
// Description: This design outputs LED patterns based on two reconfigurable
//              modules.  The recon_block_bram module ouput depends on the
//              BRAM contents within the reconfig module.  The recon_block_counter
//              module output depends on the counter within the reconfig
//              module.  Partial bit files can be created and downloaded that
//              change the contents of the BRAM and the behavior of the counter.
//              The fisrt four leds are assigned to the BRAM RM which will rotate the
//              LEDS right or left depending on which RM is configured into the device. 
//              The Counter RM will count up or down depending on which RM in configured into the device.
//              The Center button will reset both RMs. The Counter RM operation depends on
//              the initialized contents of a register called count_en. count_en will be set
//              to 0101 in order for CountUP to work and 1010 in order to get CountDown to work.
//              Button 3 can be used to manually increment the count_en value. This button is
//              designs to manually set the en_count to the correct value. Note that button 3 has  
//              debounce logic on it to avoid getting too many button pushs which would make it
//              hard to set count_en to the correct value. This means you have to push button 3 slowly
//              to manually get the count_en set to the correct value, at which time the COUNT logic will
//              start working after being reconfigured. The GSR will allow you to program without
//              having to reset the init value manually. GSR will mask out all non COUNT_UP/DOWN frames
//              so that the Shutdown and Startup happens. Using the GSR methodology for this design with init values
//              will work without having to manually reset the count_en init value. The methodology to test this
//              in Vivado 2015.2 is To Program the device with full configuration one where COUNT will count down. Then
//              Program the GST.bit for masking of non count frames. Then program the partial bitstream for Count up.
//              Then run a batch script impact -batch  wei/prog_cor1 This script sets the COR1 bit number 24 so that
//              startup will happen. Then it runs a grestore. The script Prog_shutdown does not set COR1 but it does a
//              shutdown - grestore - startup
//
//////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////
//  Top-level, static design
//////////////////////////////////////////////////////////////////////////////

module top(
   input        gclk,        // 100MHz input clock
   input        rst_n,       // Reset mapped to center push button
   output [3:0] count_out,   // mapped to general purpose LEDs[4-7]
   output [3:0] shift_out    // mapped to general purpose LEDs[0-3]
);

   wire        rst;
   reg [34:0]  count;
   wire [35:0] icon_control;
   

   assign rst = rst_n;  //as active high reset
  
   // instantiate module shift
   shift inst_shift (
      .en       (rst),
      .clk      (gclk),
      .addr     (count[34:23]),
      .data_out (shift_out) 
   );
 
   // instantiate module count
   count inst_count (
      .rst       (rst),
      .clk       (gclk),
      .count_out (count_out)
   );

   // MAIN

   always @(posedge gclk)
     if (rst)
       begin
         count <= 0;
       end
     else
       begin
         count <= count + 1;
       end

endmodule

// black box definition for module_shift
module shift(
   input         en,
   input         clk,
   input  [11:0] addr,
   output  [3:0] data_out);
endmodule

// black box definition for module_count
module count(
   input        rst,
   input        clk,
   output [3:0] count_out);
endmodule