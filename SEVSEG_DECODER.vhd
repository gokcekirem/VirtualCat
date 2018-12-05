------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SEVSEG_DECODER IS
    PORT ( 
			SEV_SEG_DATA : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
         SEV_SEG_DRIVER : in  STD_LOGIC_VECTOR (7 DOWNTO 0);
			
			 
			  SEVSEG_CONTROL : OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);

			  SEVSEG_BUS : OUT  STD_LOGIC_VECTOR (7 DOWNTO 0));
			  
END SEVSEG_DECODER;

ARCHITECTURE BEHAVIORAL OF SEVSEG_DECODER IS

SIGNAL INPUT: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";

BEGIN
INPUT <= SEV_SEG_DATA;

SEVSEG_CONTROL <= SEV_SEG_DRIVER;


WITH INPUT SELECT SEVSEG_BUS <=
	"00000011" WHEN "00000", --0
	"10011111" WHEN "00001", --1
	"00100101" WHEN "00010", --2
	"00001101" WHEN "00011", --3
	"10011001" WHEN "00100", --4
	"01001001" WHEN "00101", --5
	"01000001" WHEN "00110", --6
	"00011111" WHEN "00111", --7
	"00000001" WHEN "01000", --8
	"00001001" WHEN "01001", --9
	
	"11111111" WHEN "01111", --15 s�n�k
	"11010001" WHEN "01011", --11 saga dogru arka bacak
	"11010101" WHEN "01100", --12 �n bacak
	"00111001" WHEN "01101", --13 kafa
	"10010101" WHEN "01110", --14 sola dogru arka bacak
	"11101111" WHEN "01010", --10 �l�m
	
	"11010001" WHEN "10000", --h
	"11110101" WHEN "10001", --r
	"00110001" WHEN "10010", --p
	"00111011" WHEN "10011", --kulak
	"11000101" WHEN "10100", --kare g�z
	"11101111" WHEN "10101", --�l� goz
	"11111110" WHEN "10110", --kapali g�z
	"00000011" WHEN "10111", --nokta g�z
	"11000111" WHEN "11000", --u
	"11001101" WHEN "11001", --sag g�z
	"11100101" WHEN "11010", --sol g�z
	
	
	---"01111111" WHEN "1111", --  
	
	"00111111" WHEN OTHERS;
END BEHAVIORAL;

