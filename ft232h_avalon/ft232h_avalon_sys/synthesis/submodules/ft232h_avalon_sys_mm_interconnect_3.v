// ft232h_avalon_sys_mm_interconnect_3.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 15.1 185

`timescale 1 ps / 1 ps
module ft232h_avalon_sys_mm_interconnect_3 (
		input  wire        pll_outclk0_clk,                           //                         pll_outclk0.clk
		input  wire        usb_dma_reset_reset_bridge_in_reset_reset, // usb_dma_reset_reset_bridge_in_reset.reset
		input  wire [9:0]  usb_dma_write_master_address,              //                usb_dma_write_master.address
		output wire        usb_dma_write_master_waitrequest,          //                                    .waitrequest
		input  wire [3:0]  usb_dma_write_master_byteenable,           //                                    .byteenable
		input  wire        usb_dma_write_master_chipselect,           //                                    .chipselect
		input  wire        usb_dma_write_master_write,                //                                    .write
		input  wire [31:0] usb_dma_write_master_writedata,            //                                    .writedata
		output wire [7:0]  ft232_avalon_address,                      //                        ft232_avalon.address
		output wire        ft232_avalon_write,                        //                                    .write
		output wire        ft232_avalon_read,                         //                                    .read
		input  wire [31:0] ft232_avalon_readdata,                     //                                    .readdata
		output wire [31:0] ft232_avalon_writedata,                    //                                    .writedata
		input  wire        ft232_avalon_waitrequest                   //                                    .waitrequest
	);

	wire         usb_dma_write_master_translator_avalon_universal_master_0_waitrequest;   // ft232_avalon_translator:uav_waitrequest -> usb_dma_write_master_translator:uav_waitrequest
	wire  [31:0] usb_dma_write_master_translator_avalon_universal_master_0_readdata;      // ft232_avalon_translator:uav_readdata -> usb_dma_write_master_translator:uav_readdata
	wire         usb_dma_write_master_translator_avalon_universal_master_0_debugaccess;   // usb_dma_write_master_translator:uav_debugaccess -> ft232_avalon_translator:uav_debugaccess
	wire   [9:0] usb_dma_write_master_translator_avalon_universal_master_0_address;       // usb_dma_write_master_translator:uav_address -> ft232_avalon_translator:uav_address
	wire         usb_dma_write_master_translator_avalon_universal_master_0_read;          // usb_dma_write_master_translator:uav_read -> ft232_avalon_translator:uav_read
	wire   [3:0] usb_dma_write_master_translator_avalon_universal_master_0_byteenable;    // usb_dma_write_master_translator:uav_byteenable -> ft232_avalon_translator:uav_byteenable
	wire         usb_dma_write_master_translator_avalon_universal_master_0_readdatavalid; // ft232_avalon_translator:uav_readdatavalid -> usb_dma_write_master_translator:uav_readdatavalid
	wire         usb_dma_write_master_translator_avalon_universal_master_0_lock;          // usb_dma_write_master_translator:uav_lock -> ft232_avalon_translator:uav_lock
	wire         usb_dma_write_master_translator_avalon_universal_master_0_write;         // usb_dma_write_master_translator:uav_write -> ft232_avalon_translator:uav_write
	wire  [31:0] usb_dma_write_master_translator_avalon_universal_master_0_writedata;     // usb_dma_write_master_translator:uav_writedata -> ft232_avalon_translator:uav_writedata
	wire   [2:0] usb_dma_write_master_translator_avalon_universal_master_0_burstcount;    // usb_dma_write_master_translator:uav_burstcount -> ft232_avalon_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (10),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (10),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (0),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (1),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (0),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) usb_dma_write_master_translator (
		.clk                    (pll_outclk0_clk),                                                         //                       clk.clk
		.reset                  (usb_dma_reset_reset_bridge_in_reset_reset),                               //                     reset.reset
		.uav_address            (usb_dma_write_master_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (usb_dma_write_master_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (usb_dma_write_master_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (usb_dma_write_master_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (usb_dma_write_master_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (usb_dma_write_master_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (usb_dma_write_master_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (usb_dma_write_master_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (usb_dma_write_master_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (usb_dma_write_master_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (usb_dma_write_master_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (usb_dma_write_master_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (usb_dma_write_master_waitrequest),                                        //                          .waitrequest
		.av_byteenable          (usb_dma_write_master_byteenable),                                         //                          .byteenable
		.av_chipselect          (usb_dma_write_master_chipselect),                                         //                          .chipselect
		.av_write               (usb_dma_write_master_write),                                              //                          .write
		.av_writedata           (usb_dma_write_master_writedata),                                          //                          .writedata
		.av_burstcount          (1'b1),                                                                    //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                    //               (terminated)
		.av_begintransfer       (1'b0),                                                                    //               (terminated)
		.av_read                (1'b0),                                                                    //               (terminated)
		.av_readdata            (),                                                                        //               (terminated)
		.av_readdatavalid       (),                                                                        //               (terminated)
		.av_lock                (1'b0),                                                                    //               (terminated)
		.av_debugaccess         (1'b0),                                                                    //               (terminated)
		.uav_clken              (),                                                                        //               (terminated)
		.av_clken               (1'b1),                                                                    //               (terminated)
		.uav_response           (2'b00),                                                                   //               (terminated)
		.av_response            (),                                                                        //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                    //               (terminated)
		.av_writeresponsevalid  ()                                                                         //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (8),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (10),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) ft232_avalon_translator (
		.clk                    (pll_outclk0_clk),                                                         //                      clk.clk
		.reset                  (usb_dma_reset_reset_bridge_in_reset_reset),                               //                    reset.reset
		.uav_address            (usb_dma_write_master_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (usb_dma_write_master_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (usb_dma_write_master_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (usb_dma_write_master_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (usb_dma_write_master_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (usb_dma_write_master_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (usb_dma_write_master_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (usb_dma_write_master_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (usb_dma_write_master_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (usb_dma_write_master_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (usb_dma_write_master_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (ft232_avalon_address),                                                    //      avalon_anti_slave_0.address
		.av_write               (ft232_avalon_write),                                                      //                         .write
		.av_read                (ft232_avalon_read),                                                       //                         .read
		.av_readdata            (ft232_avalon_readdata),                                                   //                         .readdata
		.av_writedata           (ft232_avalon_writedata),                                                  //                         .writedata
		.av_waitrequest         (ft232_avalon_waitrequest),                                                //                         .waitrequest
		.av_begintransfer       (),                                                                        //              (terminated)
		.av_beginbursttransfer  (),                                                                        //              (terminated)
		.av_burstcount          (),                                                                        //              (terminated)
		.av_byteenable          (),                                                                        //              (terminated)
		.av_readdatavalid       (1'b0),                                                                    //              (terminated)
		.av_writebyteenable     (),                                                                        //              (terminated)
		.av_lock                (),                                                                        //              (terminated)
		.av_chipselect          (),                                                                        //              (terminated)
		.av_clken               (),                                                                        //              (terminated)
		.uav_clken              (1'b0),                                                                    //              (terminated)
		.av_debugaccess         (),                                                                        //              (terminated)
		.av_outputenable        (),                                                                        //              (terminated)
		.uav_response           (),                                                                        //              (terminated)
		.av_response            (2'b00),                                                                   //              (terminated)
		.uav_writeresponsevalid (),                                                                        //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                     //              (terminated)
	);

endmodule