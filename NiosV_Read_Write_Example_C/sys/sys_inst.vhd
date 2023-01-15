	component sys is
		port (
			clk_clk         : in  std_logic                    := 'X'; -- clk
			pio_8bit_export : out std_logic_vector(7 downto 0);        -- export
			reset_reset     : in  std_logic                    := 'X'  -- reset
		);
	end component sys;

	u0 : component sys
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --      clk.clk
			pio_8bit_export => CONNECTED_TO_pio_8bit_export, -- pio_8bit.export
			reset_reset     => CONNECTED_TO_reset_reset      --    reset.reset
		);

