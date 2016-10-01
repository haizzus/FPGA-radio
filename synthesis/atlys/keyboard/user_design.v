module user_design(clk, rst, exception, input_timer, input_rs232_rx, input_buttons, input_switches, input_eth_rx, input_ps2, input_timer_stb, input_rs232_rx_stb, input_buttons_stb, input_switches_stb, input_eth_rx_stb, input_ps2_stb, input_timer_ack, input_rs232_rx_ack, input_buttons_ack, input_switches_ack, input_eth_rx_ack, input_ps2_ack, output_eth_tx, output_rs232_tx, output_leds, output_eth_tx_stb, output_rs232_tx_stb, output_leds_stb, output_eth_tx_ack, output_rs232_tx_ack, output_leds_ack);
  input  clk;
  input  rst;
  output  exception;
  input  [31:0] input_timer;
  input  input_timer_stb;
  output input_timer_ack;
  input  [31:0] input_rs232_rx;
  input  input_rs232_rx_stb;
  output input_rs232_rx_ack;
  input  [31:0] input_buttons;
  input  input_buttons_stb;
  output input_buttons_ack;
  input  [31:0] input_switches;
  input  input_switches_stb;
  output input_switches_ack;
  input  [31:0] input_eth_rx;
  input  input_eth_rx_stb;
  output input_eth_rx_ack;
  input  [31:0] input_ps2;
  input  input_ps2_stb;
  output input_ps2_ack;
  output [31:0] output_eth_tx;
  output output_eth_tx_stb;
  input  output_eth_tx_ack;
  output [31:0] output_rs232_tx;
  output output_rs232_tx_stb;
  input  output_rs232_tx_ack;
  output [31:0] output_leds;
  output output_leds_stb;
  input  output_leds_ack;
  wire   exception_139862646396544;
  wire   exception_139862646964304;
  wire   exception_139862641126072;
  wire   exception_139862643205976;
  wire   exception_139862645483496;
  wire   exception_139862646809952;
  wire   exception_139862643234288;
  main_0 main_0_139862646396544(
    .clk(clk),
    .rst(rst),
    .exception(exception_139862646396544),
    .input_ps2(input_ps2),
    .input_ps2_stb(input_ps2_stb),
    .input_ps2_ack(input_ps2_ack),
    .input_rs232_rx(input_rs232_rx),
    .input_rs232_rx_stb(input_rs232_rx_stb),
    .input_rs232_rx_ack(input_rs232_rx_ack),
    .output_rs232_tx(output_rs232_tx),
    .output_rs232_tx_stb(output_rs232_tx_stb),
    .output_rs232_tx_ack(output_rs232_tx_ack));
  main_1 main_1_139862646964304(
    .clk(clk),
    .rst(rst),
    .exception(exception_139862646964304),
    .input_in(input_timer),
    .input_in_stb(input_timer_stb),
    .input_in_ack(input_timer_ack));
  main_2 main_2_139862641126072(
    .clk(clk),
    .rst(rst),
    .exception(exception_139862641126072),
    .input_in(input_buttons),
    .input_in_stb(input_buttons_stb),
    .input_in_ack(input_buttons_ack));
  main_3 main_3_139862643205976(
    .clk(clk),
    .rst(rst),
    .exception(exception_139862643205976),
    .input_in(input_switches),
    .input_in_stb(input_switches_stb),
    .input_in_ack(input_switches_ack));
  main_4 main_4_139862645483496(
    .clk(clk),
    .rst(rst),
    .exception(exception_139862645483496),
    .input_in(input_eth_rx),
    .input_in_stb(input_eth_rx_stb),
    .input_in_ack(input_eth_rx_ack));
  main_5 main_5_139862646809952(
    .clk(clk),
    .rst(rst),
    .exception(exception_139862646809952),
    .output_out(output_eth_tx),
    .output_out_stb(output_eth_tx_stb),
    .output_out_ack(output_eth_tx_ack));
  main_6 main_6_139862643234288(
    .clk(clk),
    .rst(rst),
    .exception(exception_139862643234288),
    .output_out(output_leds),
    .output_out_stb(output_leds_stb),
    .output_out_ack(output_leds_ack));
  assign exception = exception_139862646396544 || exception_139862646964304 || exception_139862641126072 || exception_139862643205976 || exception_139862645483496 || exception_139862646809952 || exception_139862643234288;
endmodule