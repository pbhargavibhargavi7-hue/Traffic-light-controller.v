`timescale 1ns/1ps

module traffic_light_controller_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    // Instantiate the traffic light controller
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("traffic_light.vcd");
        $dumpvars(0, traffic_light_controller_tb);

        // Initial values
        clk = 0;
        reset = 1;

        // Reset
        #10;
        reset = 0;

        // Allow controller to run
        #100;

        $finish;
    end

    // Display output
    initial begin
        $monitor(
            "Time=%0t | Reset=%b | RED=%b | YELLOW=%b | GREEN=%b",
            $time, reset, red, yellow, green
        );
    end

endmodule