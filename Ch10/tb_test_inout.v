//~ `New testbench
`timescale  1ns / 1ps

module tb_test_inout;

// test_inout Parameters
parameter PERIOD  = 10;


// test_inout Inputs
reg   RD                                   = 0 ;
reg   clk                                  = 0 ;

// test_inout Outputs


// test_inout Bidirs
wire  [7:0]  data_bus                      ;
reg [7:0] data_send;

assign data_bus = RD? 8'bz :data_send;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

test_inout  u_test_inout (
    .RD                      ( RD              ),
    .clk                     ( clk             ),

    .data_bus                ( data_bus  [7:0] )
);

initial
begin
    RD = 0;
    #(PERIOD*3.7);

    RD = 0;
    data_send = 8'h24;  //写入数据
    #(PERIOD);
    $display("data_send is over",$time);

    RD = 1 ; //读出数据
    #(PERIOD);
    @(posedge clk)
    if (data_send*2 == data_bus)
        $display("output is equal to input ,inout is done",$time);
    else
        $display("output is unequal to input",$time);
    $stop;
end

endmodule