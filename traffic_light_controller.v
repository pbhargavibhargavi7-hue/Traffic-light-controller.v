module traffic_light_controller (
    input wire clk,
    input wire reset,

    output reg red,
    output reg yellow,
    output reg green
);

    // State declaration
    reg [1:0] state;

    parameter RED_STATE    = 2'b00;
    parameter GREEN_STATE  = 2'b01;
    parameter YELLOW_STATE = 2'b10;

    // State transition
    always @(posedge clk or posedge reset) begin

        if (reset) begin
            state <= RED_STATE;
        end

        else begin
            case (state)

                RED_STATE:
                    state <= GREEN_STATE;

                GREEN_STATE:
                    state <= YELLOW_STATE;

                YELLOW_STATE:
                    state <= RED_STATE;

                default:
                    state <= RED_STATE;

            endcase
        end
    end

    // Output logic
    always @(*) begin

        // Default outputs
        red    = 1'b0;
        yellow = 1'b0;
        green  = 1'b0;

        case (state)

            RED_STATE: begin
                red = 1'b1;
            end

            GREEN_STATE: begin
                green = 1'b1;
            end

            YELLOW_STATE: begin
                yellow = 1'b1;
            end

            default: begin
                red = 1'b1;
            end

        endcase
    end

endmodule