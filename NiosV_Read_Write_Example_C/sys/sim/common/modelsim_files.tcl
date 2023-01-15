source [file join [file dirname [info script]] ./../../../ip/sys/sys_clock_in/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/sys/cpu/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/sys/data_instruction_ram/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/sys/sys_reset_in/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/sys/ram_32bit/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/sys/jtag_uart/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/sys/pio_8bit/sim/common/modelsim_files.tcl]

namespace eval sys {
  proc get_design_libraries {} {
    set libraries [dict create]
    set libraries [dict merge $libraries [sys_clock_in::get_design_libraries]]
    set libraries [dict merge $libraries [cpu::get_design_libraries]]
    set libraries [dict merge $libraries [data_instruction_ram::get_design_libraries]]
    set libraries [dict merge $libraries [sys_reset_in::get_design_libraries]]
    set libraries [dict merge $libraries [ram_32bit::get_design_libraries]]
    set libraries [dict merge $libraries [jtag_uart::get_design_libraries]]
    set libraries [dict merge $libraries [pio_8bit::get_design_libraries]]
    dict set libraries altera_merlin_axi_translator_1920    1
    dict set libraries altera_merlin_slave_translator_191   1
    dict set libraries altera_merlin_axi_master_ni_1931     1
    dict set libraries altera_merlin_slave_agent_191        1
    dict set libraries altera_avalon_sc_fifo_1930           1
    dict set libraries altera_merlin_router_1920            1
    dict set libraries altera_merlin_traffic_limiter_191    1
    dict set libraries altera_avalon_st_pipeline_stage_1920 1
    dict set libraries altera_merlin_burst_adapter_1921     1
    dict set libraries altera_merlin_demultiplexer_1921     1
    dict set libraries altera_merlin_multiplexer_1921       1
    dict set libraries altera_mm_interconnect_1920          1
    dict set libraries altera_irq_mapper_1920               1
    dict set libraries altera_reset_controller_1921         1
    dict set libraries sys                                  1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [sys_clock_in::get_memory_files "$QSYS_SIMDIR/../../ip/sys/sys_clock_in/sim/"]]
    set memory_files [concat $memory_files [cpu::get_memory_files "$QSYS_SIMDIR/../../ip/sys/cpu/sim/"]]
    set memory_files [concat $memory_files [data_instruction_ram::get_memory_files "$QSYS_SIMDIR/../../ip/sys/data_instruction_ram/sim/"]]
    set memory_files [concat $memory_files [sys_reset_in::get_memory_files "$QSYS_SIMDIR/../../ip/sys/sys_reset_in/sim/"]]
    set memory_files [concat $memory_files [ram_32bit::get_memory_files "$QSYS_SIMDIR/../../ip/sys/ram_32bit/sim/"]]
    set memory_files [concat $memory_files [jtag_uart::get_memory_files "$QSYS_SIMDIR/../../ip/sys/jtag_uart/sim/"]]
    set memory_files [concat $memory_files [pio_8bit::get_memory_files "$QSYS_SIMDIR/../../ip/sys/pio_8bit/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [sys_clock_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/sys_clock_in/sim/"]]
    set design_files [dict merge $design_files [cpu::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/cpu/sim/"]]
    set design_files [dict merge $design_files [data_instruction_ram::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/data_instruction_ram/sim/"]]
    set design_files [dict merge $design_files [sys_reset_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/sys_reset_in/sim/"]]
    set design_files [dict merge $design_files [ram_32bit::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/ram_32bit/sim/"]]
    set design_files [dict merge $design_files [jtag_uart::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/jtag_uart/sim/"]]
    set design_files [dict merge $design_files [pio_8bit::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/pio_8bit/sim/"]]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    set design_files [concat $design_files [sys_clock_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/sys_clock_in/sim/"]]
    set design_files [concat $design_files [cpu::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/cpu/sim/"]]
    set design_files [concat $design_files [data_instruction_ram::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/data_instruction_ram/sim/"]]
    set design_files [concat $design_files [sys_reset_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/sys_reset_in/sim/"]]
    set design_files [concat $design_files [ram_32bit::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/ram_32bit/sim/"]]
    set design_files [concat $design_files [jtag_uart::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/jtag_uart/sim/"]]
    set design_files [concat $design_files [pio_8bit::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/sys/pio_8bit/sim/"]]
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_axi_translator_1920/sim/sys_altera_merlin_axi_translator_1920_hvn5ezy.sv"]\"  -work altera_merlin_axi_translator_1920"                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_translator_191/sim/sys_altera_merlin_slave_translator_191_x56fcki.sv"]\"  -work altera_merlin_slave_translator_191"                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_axi_master_ni_1931/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_axi_master_ni_1931"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_axi_master_ni_1931/sim/sys_altera_merlin_axi_master_ni_1931_fofi6ka.sv"]\"  -work altera_merlin_axi_master_ni_1931"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_191/sim/sys_altera_merlin_slave_agent_191_ncfkfri.sv"]\"  -work altera_merlin_slave_agent_191"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_191/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_slave_agent_191"                                             
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_sc_fifo_1930/sim/sys_altera_avalon_sc_fifo_1930_pqv24kq.v"]\"  -work altera_avalon_sc_fifo_1930"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1920/sim/sys_altera_merlin_router_1920_x3w7b7a.sv"]\"  -work altera_merlin_router_1920"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1920/sim/sys_altera_merlin_router_1920_2436o5i.sv"]\"  -work altera_merlin_router_1920"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1920/sim/sys_altera_merlin_router_1920_tvl2ohi.sv"]\"  -work altera_merlin_router_1920"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1920/sim/sys_altera_merlin_router_1920_3qrggba.sv"]\"  -work altera_merlin_router_1920"                                                
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/sys_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_191_zonrf6q.v"]\"  -work altera_merlin_traffic_limiter_191"       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/altera_merlin_reorder_memory.sv"]\"  -work altera_merlin_traffic_limiter_191"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/altera_avalon_st_pipeline_base.v"]\"  -work altera_merlin_traffic_limiter_191"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_191/sim/sys_altera_merlin_traffic_limiter_191_kcba44q.sv"]\"  -work altera_merlin_traffic_limiter_191"                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1920/sim/sys_altera_avalon_st_pipeline_stage_1920_zterisq.sv"]\"  -work altera_avalon_st_pipeline_stage_1920"               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1920/sim/altera_avalon_st_pipeline_base.v"]\"  -work altera_avalon_st_pipeline_stage_1920"                                  
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/sys_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1921_ilhn4ca.v"]\"  -work altera_merlin_burst_adapter_1921"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/sys_altera_merlin_burst_adapter_1921_zxdp55y.sv"]\"  -work altera_merlin_burst_adapter_1921"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/altera_merlin_burst_adapter_uncmpr.sv"]\"  -work altera_merlin_burst_adapter_1921"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/altera_merlin_burst_adapter_13_1.sv"]\"  -work altera_merlin_burst_adapter_1921"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/altera_merlin_burst_adapter_new.sv"]\"  -work altera_merlin_burst_adapter_1921"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/altera_incr_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1921"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/altera_wrap_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1921"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/altera_default_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1921"                                         
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1921/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_burst_adapter_1921"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/sys_altera_merlin_demultiplexer_1921_zi4ncjq.sv"]\"  -work altera_merlin_demultiplexer_1921"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/sys_altera_merlin_demultiplexer_1921_uhj3cxy.sv"]\"  -work altera_merlin_demultiplexer_1921"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/sys_altera_merlin_multiplexer_1921_jngkzvq.sv"]\"  -work altera_merlin_multiplexer_1921"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/sys_altera_merlin_multiplexer_1921_wu2ge4i.sv"]\"  -work altera_merlin_multiplexer_1921"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/sys_altera_merlin_demultiplexer_1921_t67wuei.sv"]\"  -work altera_merlin_demultiplexer_1921"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/sys_altera_merlin_demultiplexer_1921_4uzatya.sv"]\"  -work altera_merlin_demultiplexer_1921"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/sys_altera_merlin_multiplexer_1921_ue6isla.sv"]\"  -work altera_merlin_multiplexer_1921"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/sys_altera_merlin_multiplexer_1921_kzbeajq.sv"]\"  -work altera_merlin_multiplexer_1921"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1921"                                                   
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/sys_altera_mm_interconnect_1920_5k4ctly.v"]\"  -work altera_mm_interconnect_1920"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_irq_mapper_1920/sim/sys_altera_irq_mapper_1920_jj7diii.sv"]\"  -work altera_irq_mapper_1920"                                                         
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1921/sim/altera_reset_controller.v"]\"  -work altera_reset_controller_1921"                                                             
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1921/sim/altera_reset_synchronizer.v"]\"  -work altera_reset_controller_1921"                                                           
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/sys.v"]\"  -work sys"                                                                                                                                              
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [sys_clock_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cpu::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [data_instruction_ram::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sys_reset_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ram_32bit::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [jtag_uart::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [pio_8bit::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [sys_clock_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cpu::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [data_instruction_ram::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sys_reset_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ram_32bit::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [jtag_uart::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [pio_8bit::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sys_clock_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cpu::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [data_instruction_ram::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sys_reset_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ram_32bit::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [jtag_uart::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [pio_8bit::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
  proc normalize_path {FILEPATH} {
      if {[catch { package require fileutil } err]} { 
          return $FILEPATH 
      } 
      set path [fileutil::lexnormalize [file join [pwd] $FILEPATH]]  
      if {[file pathtype $FILEPATH] eq "relative"} { 
          set path [fileutil::relative [pwd] $path] 
      } 
      return $path 
  } 
}
