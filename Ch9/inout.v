module test_inout(
    clk,
    data_bus,
    RD
);

input RD;
input clk;
inout[7:0] data_bus;
(*DONT_TOUCH = "TRUE"*)wire[7:0] data_in, data_out;
reg [7:0] shift_reg;

assign data_in = data_bus;   //data input ;drivered by data_bus
assign data_bus = RD ? data_out : 8'bz;  //data_bus is drivered by data_out

always@(posedge clk) begin
    if(~RD)
        shift_reg <= data_in;   //RD 无效 输入数据 
end

assign data_out = shift_reg<<1;  // RD有效输出shift_reg 中数据

endmodule