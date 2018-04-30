library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

package cpu_lib is
	
	-- Shifter Select Type
	type t_shift is (shftpass, shl, shr, rotl, rotr);
	
	-- Alu Select Bus Type
	subtype t_alu is unsigned(3 downto 0);
	
	-- Alu Select Code
	constant alupass : unsigned(3 downto 0) := "0000";
	constant andOp   : unsigned(3 downto 0) := "0001";
	constant orOp    : unsigned(3 downto 0) := "0010";
	constant notOp   : unsigned(3 downto 0) := "0011";
	constant xorOp   : unsigned(3 downto 0) := "0100";
	constant plus    : unsigned(3 downto 0) := "0101";
	constant alusub  : unsigned(3 downto 0) := "0110";
	constant inc     : unsigned(3 downto 0) := "0111";
	constant dec     : unsigned(3 downto 0) := "1000";
	constant zero    : unsigned(3 downto 0) := "1001";
	
	-- Comparetor Select Type
	type t_comp is (eq, neq, gt, gte, lt, lte);
	
	-- Register Select Type
	subtype t_reg is std_logic_vector(2 downto 0);
	
	-- Machine States
	-- Here we add new states of new instructions
	type state is (reset1, reset2, reset3, reset4, reset5,
						reset6, execute, nop, load, store, move,
						load2, load3, load4, store2, store3,
						store4, move2, move3, move4,incPc, incPc2,
						incPc3, incPc4, incPc5, incPc6, loadPc,
						loadPc2,loadPc3, loadPc4, bgtI2, bgtI3,
						bgtI4, bgtI5, bgtI6, bgtI7,bgtI8, bgtI9,
						bgtI10, braI2, braI3, braI4, braI5, braI6,
						loadI2,loadI3, loadI4, loadI5, loadI6, 
						blt2, blt3, blt4, blt5, blt6, blt7, blt8, blt9,	 
						add2, add3, add4, 
						ror2, ror3, ror4, ror5, ror6,
						beq2, beq3, beq4, beq5, beq6, beq7, beq8, beq9,
						shl2, shl3, shl4, shl5, shl6,
						xor2, xor3, xor4,
						inc2, inc3, inc4
						-- Add State Here
						
						-- Add State Here
						);
	-- 16 bit Bus Type
	subtype bit16 is std_logic_vector(15 downto 0);

end cpu_lib;
	