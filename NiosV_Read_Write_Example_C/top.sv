module top
  (
   input clk,
   output led
   );
   
   logic reset_wire;
   logic [7:0] led_wire;

   assign led = led_wire[0];

   altsource_probe 
     #(.probe_width(0), 
       .source_width(1)
       ) issp_reset
       (
	.source(reset_wire)
	);

    sys sys_inst
      (
       .clk_clk(clk), 
       .pio_8bit_export(led_wire),
       .reset_reset(reset_wire)
       );

endmodule
