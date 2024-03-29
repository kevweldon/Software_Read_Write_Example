

proc main {} {
    set PIO_8BIT_BASE 0x00000000
    set RAM_32BIT_BASE 0x00000100

    #########################
    # Open the service path #
    #########################
    set jm [get_jtag_master];
    puts "Opening master: $jm\n"
    open_service master $jm
    
    #############################
    # Read and write 32-bit RAM #
    #############################
    # Write to the first location in the 32-bit RAM
    master_write_32 $jm $RAM_32BIT_BASE 0x01234567
    # Write to the second location in the 32-bit RAM
    master_write_32 $jm [expr $RAM_32BIT_BASE+4] 0x89ABCDEF
    # Read the first location in the 32-bit RAM
    set read_value [master_read_32 $jm $RAM_32BIT_BASE 1]
    puts "Read $read_value at address $RAM_32BIT_BASE"
    # Read the second location in the 32-bit RAM
    set read_value [master_read_32 $jm [expr $RAM_32BIT_BASE+4] 1]
    puts "Read $read_value at address 0x[format %08X [expr $RAM_32BIT_BASE+4]]"

    #################
    # Blink the LED #
    #################
    puts "\nBlinking LED for 10 seconds";
    for {set i 0} {$i<10} {incr i} {
	master_write_8 $jm $PIO_8BIT_BASE 0x01
	after 500;
	master_write_8 $jm $PIO_8BIT_BASE 0x00
	after 500;
    }
    
    close_service master $jm

    return 0;
}

proc get_jtag_master {} {
    #########################
    # Open the service path #
    #########################
    # You may need to adjust the value of the MASTER_INDEX
    set MASTER_INDEX 0
    puts "Opening JTAG master service path..."
    set i 0
    # Print all the masters found in the system. Here we need
    # to select the jtag2avalon master
    puts "I found the following masters:"
    foreach master [get_service_paths master] {
	puts "$i. $master"
	incr i
    }
    set jm [ lindex [ get_service_paths master ] $MASTER_INDEX ]
    return $jm
}


main;
