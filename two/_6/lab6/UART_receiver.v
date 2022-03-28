module UART_receiver (
    input            clock,
    input            data_IN,
    output reg [7:0] data_OUT,
    output reg       done,
    output reg       parity_error
);
parameter IDLE = 0, READ = 1, PARITY = 2, STOP_1 = 3, STOP_2 = 4;

reg [2:0] state;
reg [2:0] cycle_count;
reg [3:0] bit_count;
reg [7:0] storage;
reg parity_bit;

initial begin
    state = IDLE;
    cycle_count = 0;
    bit_count = 0;
    storage = 0;
    parity_bit = 0;
    data_OUT = 0;
    done = 1;
    parity_error = 0;
end
/*
    8x oversampling :: make sure input clock is eight times
        faster than the baud rate of data_IN.
*/

//  next_state logic
always@(posedge clock) begin
    case (state)
        IDLE:   // wait until input signal is validated
        begin   // and begin mid-bit sampling loop
            if (data_IN)
            begin   // loop-back arc
                state <= IDLE;
            end
            else if (!data_IN && cycle_count < 3)
            begin   //  cycle increment arc
                cycle_count <= cycle_count + 1;
                state <= IDLE;
            end
            else if (!data_IN && cycle_count >= 3)
            begin   // READ transition arc
                cycle_count <= 0;
                state <= READ;
            end
        end
        READ:   // wait until clock sampling at mid-bit
        begin   // and capture input signal for 8 cycles
            if (bit_count >= 8)
            begin   // PARITY transition arc
                bit_count <= 0;
                cycle_count <= cycle_count + 1;
                state <= PARITY;
            end
            else if (cycle_count < 7)
            begin   // cycle increment arc
                cycle_count <= cycle_count + 1;
                state <= READ;
            end
            else if (cycle_count >= 7)
            begin   // mid-bit capture arc
                storage[bit_count] <= data_IN;
                bit_count <= bit_count + 1;
                cycle_count <= 0;
                state <= READ;
            end
        end
        PARITY: //
        begin   //
            if (cycle_count < 7)
            begin   // cycle increment arc
                cycle_count <= cycle_count + 1;
                state <= PARITY;
            end
            else
            begin   // STOP_1 transition arc
                cycle_count <= 0;
                parity_bit <= data_IN;
                state <= STOP_1;
            end
        end
        STOP_1: //
        begin   //
            if (cycle_count < 7)
            begin   // cycle increment arc
                cycle_count <= cycle_count + 1;
                state <= STOP_1;
            end
            else
            begin   // STOP_2 transition arc
                cycle_count <= 0;
                state <= STOP_2;
            end
        end
        STOP_2: //
        begin   //
            if (cycle_count < 3)
            begin   // cycle increment arc
                cycle_count <= cycle_count + 1;
                state <= STOP_2;
            end
            else
            begin   // IDLE transition arc
                cycle_count <= 0;
                state <= IDLE;
            end
        end
    endcase
end

// output logic
always@(posedge clock) begin
    case (state)
        IDLE:
        begin
            if (data_IN)
            begin
                done <= 1;
            end
            else
            begin
                done <= 0;
            end
        end
        READ:
        begin
        end
        PARITY:
        begin
        end
        STOP_1:
        begin
        end
        STOP_2:
        begin
            done <= 1;
            data_OUT <= storage;
            parity_error <= parity_bit != ^storage;
        end
    endcase
end

endmodule
