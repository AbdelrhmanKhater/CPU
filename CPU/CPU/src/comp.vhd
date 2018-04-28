library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.cpu_lib.all;

entity comp is
	port( a, b : in bit16;
			sel : in t_comp;
			compout : out std_logic);
end comp;

architecture rtl of comp is
	begin
	compproc: process(a, b, sel)
		begin
			case sel is
				when eq =>
					if a = b then
						compout <= '1' after 1 ns;
					else
						compout <= '0' after 1 ns;
					end if;
				when neq =>
					if a /= b then
						compout <= '1' after 1 ns;
					else
						compout <= '0' after 1 ns;
					end if;
				when gt =>
					if a > b then
						compout <= '1' after 1 ns;
					else
						compout <= '0' after 1 ns;
					end if;
				when gte =>
					if a >= b then
						compout <= '1' after 1 ns;
					else
						compout <= '0' after 1 ns;
					end if;
				when lt =>
					if a < b then
						compout <= '1' after 1 ns;
					else
						compout <= '0' after 1 ns;
					end if;
				when lte =>
					if a <= b then
						compout <= '1' after 1 ns;
					else
						compout <= '0' after 1 ns;
					end if;
			end case;
	end process;
end rtl;