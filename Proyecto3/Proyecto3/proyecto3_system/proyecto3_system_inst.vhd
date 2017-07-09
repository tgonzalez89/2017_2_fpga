	component proyecto3_system is
		port (
			clk_clk       : in  std_logic := 'X'; -- clk
			reset_reset_n : in  std_logic := 'X'; -- reset_n
			spi_io_MISO   : in  std_logic := 'X'; -- MISO
			spi_io_MOSI   : out std_logic;        -- MOSI
			spi_io_SCLK   : out std_logic;        -- SCLK
			spi_io_SS_n   : out std_logic         -- SS_n
		);
	end component proyecto3_system;

	u0 : component proyecto3_system
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, --  reset.reset_n
			spi_io_MISO   => CONNECTED_TO_spi_io_MISO,   -- spi_io.MISO
			spi_io_MOSI   => CONNECTED_TO_spi_io_MOSI,   --       .MOSI
			spi_io_SCLK   => CONNECTED_TO_spi_io_SCLK,   --       .SCLK
			spi_io_SS_n   => CONNECTED_TO_spi_io_SS_n    --       .SS_n
		);

