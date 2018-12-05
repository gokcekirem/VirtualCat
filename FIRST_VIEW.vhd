library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity ONEHZ_CLOCK_GENERATOR is
port(MCLK: in std_logic; 
	  ONEHZCLOCK: out std_logic 
	  
);
end ONEHZ_CLOCK_GENERATOR;

architecture Behavioral of ONEHZ_CLOCK_GENERATOR is
signal Counter: std_logic_vector(27 downto 0) := x"0000000";
signal Temp: std_logic :='0';


begin
MyProcess: process(MCLK)
begin
	if(rising_edge(MCLK)) then 
		Counter <= Counter + 1;
		if(counter < x"5ffffff") then 
			Temp <= '1'; -- saniye hýzý
		else 
			Counter <= x"0000000";
			Temp <='0';
		end if; 
	end if;
end process;

ONEHZCLOCK <= temp; 
end Behavioral;