module blink (
    input wire clk,    // Clock input
    output reg led     // LED output
);

    reg [23:0] counter; // 24-bit counter for dividing the clock frequency

    always @(posedge clk) begin
        counter <= counter + 1;
        led <= counter[23]; // Toggle LED at a slower rate
    end
endmodule

