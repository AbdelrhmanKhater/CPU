library CPU;
use CPU.cpu_lib.all;
library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity cpu_tb is
end cpu_tb;

architecture TB_ARCHITECTURE of cpu_tb is
	-- Component declaration of the tested unit
	component cpu
	port(
		clock : in STD_LOGIC;
		reset : in STD_LOGIC;
		ready : in STD_LOGIC;
		addr : out bit16;
		rw : out STD_LOGIC;
		vma : out STD_LOGIC;
		data : inout bit16 );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clock : STD_LOGIC;
	signal reset : STD_LOGIC;
	signal ready : STD_LOGIC;
	signal data : bit16;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal addr : bit16;
	signal rw : STD_LOGIC;
	signal vma : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : cpu
		port map (
			clock => clock,
			reset => reset,
			ready => ready,
			addr => addr,
			rw => rw,
			vma => vma,
			data => data
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_cpu of cpu_tb is
	for TB_ARCHITECTURE
		for UUT : cpu
			use entity work.cpu(rtl);
		end for;
	end for;
end TESTBENCH_FOR_cpu;

