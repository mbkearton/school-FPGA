module lab4_aes_tb ();
//      INCLUDE TIMESCALE
`include "timescale.v"
//      TOP INPUTS
reg     clock;
reg     inv_reset;
reg     key_reset;
reg     inv_load;
reg     key_load;
reg [127:0] key;
reg [127:0] text_in;
//      TOP OUTPUTS
wire [127:0] text_out;
wire    inv_done;
//      testing variables
integer     cipher_in_file;
integer     key_in_file;
integer     i;

aes_inv_cipher_top  q0  (
    .clk(       clock       ),
    .rst(       inv_reset   ),
    .ld(        inv_load        ),
    .kld(       key_load    ),
    .done(      inv_done    ),
    .key(       key         ),
    .text_in(   text_in     ),
    .text_out(  text_out    )
);

initial begin
    clock = 1;
    inv_reset = 0;
    inv_load = 0;
    key_load = 1;
    key = 0;
    text_in = 0;
    forever begin
        #1 clock = ~clock;
    end
end

initial begin
    #2 inv_reset = 1;

    cipher_in_file = $fopen("e40cipher.txt", "r");
    key_in_file = $fopen("e40cipher_key.txt", "r");
    $fscanf(key_in_file, "%h\n", key);
    $display("KEY:\t%h", key);

    while ( ! $feof(cipher_in_file) ) begin
        $fscanf(cipher_in_file, "%h\n", text_in);
        //$display("IN:\t%h", text_in);

        //      wait 12 cycles for key expansion
        #2 key_load = 0;
        for (i = 0; i < 12; i = i + 1) begin
            #2;
        end
        //      wait 12 more cycles (or until done == true) for decryption
        inv_load = 1;
        #2 inv_load = 0;
        while ( ! inv_done ) begin
            #2;
        end
        $write("%s", text_out);

        #2;
    end
    $write("\n");
    $fclose(cipher_in_file);
    $fclose(key_in_file);

    $stop;
end

endmodule
