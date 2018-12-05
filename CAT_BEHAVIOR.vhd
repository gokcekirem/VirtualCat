
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY CAT IS
    PORT ( 	oneHZCLOCK					: IN STD_LOGIC;
				B1 							: IN STD_LOGIC;
				B2								: IN STD_LOGIC;
				B3								: IN STD_LOGIC;
				B4		 						: IN STD_LOGIC;
            CLK 							: IN  STD_LOGIC;
				SW0,SW1,SW2					: IN STD_LOGIC;				
				SEV_SEG_DATA 				: OUT  STD_LOGIC_VECTOR (4 DOWNTO 0);
				SEV_SEG_DRIVER 			: OUT  STD_LOGIC_VECTOR (7 DOWNTO 0));

END CAT;

ARCHITECTURE BEHAVIORAL OF CAT IS

SIGNAL COUNTER : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
SIGNAL COUNTER2 : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";

SIGNAL SS1 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; --0	
SIGNAL SS2 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; --0
SIGNAL SS3 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "00000"; --0
SIGNAL SS4 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "00000"; --0
SIGNAL SS5 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "00000"; --0
SIGNAL SS6 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; --0
SIGNAL SS7 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; --0
SIGNAL SS8 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; --0
-----
SIGNAL A1 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00110"; --5
SIGNAL A2 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00010"; --2
SIGNAL A3 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "00110"; --5
SIGNAL A4 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "00010"; --2
SIGNAL A5 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "00110"; --5
SIGNAL A6 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00010"; --2
SIGNAL A7 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00110"; --5
SIGNAL A8 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00010"; --2
-----
SIGNAL Q1 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL Q2 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL Q3 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "01111"; --
SIGNAL Q4 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "01111"; --
SIGNAL Q5 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "01111"; --
SIGNAL Q6 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL Q7 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL Q8 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
-----
SIGNAL W1 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL W2 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL W3 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "01111"; --
SIGNAL W4 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "01111"; --
SIGNAL W5 : STD_LOGIC_VECTOR(4 DOWNTO 0):= "01111"; --
SIGNAL W6 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL W7 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
SIGNAL W8 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; --
----

BEGIN

PROCESS_CLK : PROCESS(CLK,sw0,sw1,sw2,counter)

BEGIN

IF(CLK'EVENT AND CLK = '1') THEN
		COUNTER <= COUNTER+1;
		--IF (COUNTER = "110" ) THEN
	   --COUNTER <= "000" ;
		--END IF;
	END IF;


---KITTY MODE
	IF(SW1 = '0' AND SW0 = '0') THEN
	
	IF(ONEHZCLOCK'EVENT AND ONEHZCLOCK = '1') THEN
		
		IF (counter2="0000") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01111";
		W4 <=  "01111";
		W5 <=  "01111";
		W6 <=  "01101";
		W7 <=  "01100";
		W8 <=  "01011";
		counter2  <=  "0001";
		
		END IF;

		IF (counter2="0001") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01111";
		W4 <=  "01111";
		W5 <=  "01101";
		W6 <=  "01100";
		W7 <=  "01011";
		W8 <=  "01111";
		counter2 <= counter2+1;
		END IF;
		
		IF (counter2="0010") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01111";
		W4 <=  "01101";
		W5 <=  "01100";
		W6 <=  "01011";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <=counter2+1;
		END IF;
			
		IF (counter2="0011") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01101";
		W4 <=  "01100";
		W5 <=  "01011";
		W6 <=  "01111";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <= counter2+1;
		END IF;	
		
		IF (counter2="0100") THEN
		W1 <=  "01111";
		W2 <=  "01101";
		W3 <=  "01100";
		W4 <=  "01011";
		W5 <=  "01111";
		W6 <=  "01111";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <= counter2+1;
		END IF;

		IF (counter2="0101") THEN --en dip
		W1 <=  "01101";
		W2 <=  "01100";
		W3 <=  "01011";
		W4 <=  "01111";
		W5 <=  "01111";
		W6 <=  "01111";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <= counter2+1;
		END IF;
		
		IF (counter2="0110") THEN
		W1 <=  "01110";
		W2 <=  "01100";
		W3 <=  "01101";
		W4 <=  "01111";
		W5 <=  "01111";
		W6 <=  "01111";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <= counter2+1;
		END IF;
		
		IF (counter2="0111") THEN
		W1 <=  "01111";
		W2 <=  "01110";
		W3 <=  "01100";
		W4 <=  "01101";
		W5 <=  "01111";
		W6 <=  "01111";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <= "1000";
		END IF;
		
		IF (counter2="1000") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01110";
		W4 <=  "01100";
		W5 <=  "01101";
		W6 <=  "01111";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <= "1001";
		END IF;
		
		IF (counter2="1001") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01111";
		W4 <=  "01110";
		W5 <=  "01100";
		W6 <=  "01101";
		W7 <=  "01111";
		W8 <=  "01111";
		counter2 <= "1010";
		END IF;
		
		IF (counter2="1010") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01111";
		W4 <=  "01111";
		W5 <=  "01110";
		W6 <=  "01100";
		W7 <=  "01101";
		W8 <=  "01111";
		counter2 <= "1011";
		END IF;
		
		IF (counter2="1011") THEN
		W1 <=  "01111";
		W2 <=  "01111";
		W3 <=  "01111";
		W4 <=  "01111";
		W5 <=  "01111";
		W6 <=  "01110";
		W7 <=  "01100";
		W8 <=  "01101";
		counter2 <= "0000";
		END IF;
		
		END IF;
		SS1	<=  W1;
		SS2 	<=  W2;
		SS3	<=  W3;
		SS4	<=  W4;
		SS5	<=  W5;
		SS6  	<=  W6;
		SS7  	<=  W7;
		SS8  	<=  W8;
		

--RESET MODE	
	elsIF(SW1 = '0' AND SW0 = '1') THEN
 A1	<=  "00101"; --5
 A2 	<=  "00010"; --2
 A3	<=  "00101";
 A4	<=  "00010";
 A5	<=  "00101";
 A6 	<=  "00010";
 A7	<=  "00101"; 
 A8  	<=  "00010"; 
 SS1	<= 	A1;  --7seg
 SS2	<= 	A2;
 SS3	<= 	A3;
 SS4	<= 	A4;
 SS5	<= 	A5;
 SS6	<= 	A6;
 SS7	<= 	A7;
 SS8	<= 	A8;
 counter2  <=  "0000";
 	
	
	
--CLOCK MODE
-----------------------------------25/25/25/25
	elsIF(SW1 = '1' AND SW0 = '0') THEN
	
		IF(ONEHZCLOCK'EVENT AND ONEHZCLOCK = '1') THEN
		
		--------------
		IF (A1 /= 0 AND A2 = 0) THEN 
		A1<=A1-1;
		END IF;
		
		IF (A3 /= 0 AND A4 = 0) THEN 
		A3<=A3-1;
		END IF;
		
		IF (A5 /= 0 AND A6 = 0) THEN 
		A5<=A5-1;
		END IF;
		
		IF (A7 /= 0 AND A8 = 0) THEN 
		A7<=A7-1;
		END IF;
		
		-------------
		
		IF(A1 /= 0) THEN
			IF (A2 /= 0) THEN
			A1 <= A1-1;
			END IF;
		END IF;
		
		IF(A3 /= 0) THEN 
			IF (A4 /= 0) THEN
			A3 <= A3 -1;
			END IF;
		END IF;
		
		IF(A5 /= 0) THEN 
			IF (A6 /= 0) THEN
			A5 <= A5 -1;
			END IF;
		END IF;
	
		IF(A7 /= 0) THEN 
			IF (A8 /= 0) THEN
			A7 <= A7 -1;
			END IF;
		END IF;
		
		------------
		
		IF(A1 = 0 AND A2>0) THEN
		A2 <= A2 -1;
		A1 <= A1+"01001";
		END IF;

		IF(A3 = 0 AND A4>0) THEN
		A4 <= A4 -1;
		A3 <= A3+"01001";
		END IF;

		IF(A5 = 0 AND A6>0) THEN
		A6 <= A6 -1;
		A5 <= A5+"01001";
		END IF;
		
		IF(A7 = 0 AND A8>0) THEN
		A8 <= A8 -1;
		A7 <= A7+"01001";
		END IF;
		
		----
		
		IF(B1 = '1' ) THEN
		IF (A1/="01001") THEN
		A1 <= A1+1;
		END IF;
		IF (A1="01001") THEN
		IF (A2/="00010") THEN
		A2 <= A2+1;
		A1 <= "00000";
		END IF;
		END IF;
		IF (A2="00010") THEN
		IF (A1>="00101") THEN
		---DO NOTHING
		END IF;
		END IF;
		END IF;
	 
		IF (B2 = '1' ) THEN
		IF (A3/="01001") THEN
		A3 <= A3+1;
		END IF;
		IF (A3="01001") THEN
		IF (A4/="00010") THEN
		A4 <= A4+1;
		A3 <= "00000";
		END IF;
		END IF;
		IF (A4="00010") THEN
		IF (A3>="00101") THEN
		---DO NOTHING
		END IF;
		END IF;
		END IF;
	 
		IF (B3 = '1' ) THEN
		IF (A5/="01001") THEN
		A5 <= A5+1;
		END IF;
		IF (A5="01001") THEN
		IF (A6/="00010") THEN
		A6 <= A6+1;
		A5 <= "00000";
		END IF;
		END IF;
		IF (A6="00010") THEN
		IF (A5>="00101") THEN
		---DO NOTHING
		END IF;
		END IF;
		END IF;
	 
		IF (B4 = '1' ) THEN
		IF (A7/="01001") THEN
		A7 <= A7+1;
		END IF;
		IF (A7="01001") THEN
		IF (A8/="00010") THEN
		A8 <= A8+1;
		A7 <= "00000";
		END IF;
		END IF;
		IF (A8="00010") THEN
		IF (A7>="00101") THEN
		---DO NOTHING
		END IF;
		END IF;
		END IF;	
		
		----
		
		IF( (A1 = 0 AND A2 = 0) OR (A3 = 0 AND A4 = 0) OR (A5 = 0 AND A6 = 0) OR (A7 = 0 AND A8 = 0)) THEN
		 A1	<=  "00000";
		 A2 	<=  "00000";
		 A3	<=  "00000";
		 A4	<=  "00000";
		 A5	<=  "00000";
		 A6   <=  "00000";
		 A7   <=  "00000";
		 A8   <=  "00000";
		 END IF;
		 
	   ------------
		SS1	<= 	A1;
		SS2	<= 	A2;
		SS3	<= 	A3;
		SS4	<= 	A4;
		SS5	<= 	A5;
		SS6	<= 	A6;
		SS7	<= 	A7;
		SS8	<= 	A8;
		------------
		
		END IF;
		

---PAUSE MODE	
	elsIF(SW1 = '1' AND SW0 = '1') THEN
	
	IF ((A1 >= 0 AND A2 = "00010") OR (A3 >= 0 AND A4 = "00010") OR (A5 >= 0 AND A6 = "00010") OR (A7 >= 0 AND A8 = "00010")) THEN
	--HAPPY CAT
	Q1	<=  "10010";
	Q2 <=  "11000";
	Q3	<=  "10001";
	Q4	<=  "01111";
	Q5	<=  "10010";
	Q6 <=  "11000";
	Q7 <=  "10001";
	Q8 <=  "10001";
	END IF;
	
	IF ((A1 >= "00101" AND A2 = "00001") OR (A3 >= "00101" AND A4 = "00001") OR (A5 >= "00101" AND A6 = "00001") OR (A7 >= "00101" AND A8 = "00001")) THEN
	--MEH CAT
	Q1	<=  "01111";
	Q2 <=  "01111";
	Q3	<=  "10011";
	Q4	<=  "10100";
	Q5	<=  "10100";
	Q6 <=  "10011";
	Q7 <=  "01111";
	Q8 <=  "01111";
	END IF;
	
	IF ((A1 < "00101" AND A2 = "00001") OR (A3 < "00101" AND A4 = "00001") OR (A5 < "00101" AND A6 = "00001") OR (A7 < "00101" AND A8 = "00001")) THEN
	--WWWEH CAT
	Q1	<=  "01111";
	Q2 <=  "01111";
	Q3	<=  "10011";
	Q4	<=  "10110";
	Q5	<=  "10110";
	Q6 <=  "10011";
	Q7 <=  "01111";
	Q8 <=  "01111";
	END IF;
	
	IF ((A1 >= "00101" AND A2 = 0) OR (A3 >= "00101" AND A4 = 0) OR (A5 >= "00101" AND A6 = 0) OR (A7 >= "00101" AND A8 = 0)) THEN
	--GRUMPY CAT
	Q1	<=  "01111";
	Q2 <=  "01111";
	Q3	<=  "10011";
	Q4	<=  "11001"; --sol
	Q5	<=  "11010"; --sað
	Q6 <=  "10011";
	Q7 <=  "01111";
	Q8 <=  "01111";
	END IF;
	
	IF ((A1 < "00101" AND A2 = 0) OR (A3 < "00101" AND A4 = 0) OR (A5 < "00101" AND A6 = 0) OR (A7 < "00101" AND A8 = 0)) THEN
	--ANGRY CAT
	Q1	<=  "01111";
	Q2 <=  "10000";
	Q3	<=  "10001";
	Q4	<=  "01111";
	Q5	<=  "10000";
	Q6 <=  "10001";
	Q7 <=  "10001";
	Q8 <=  "01111";
	END IF;
	
	IF ((A1 = 0 AND A2 = 0) OR (A3 = 0 AND A4 = 0) OR (A5 = 0 AND A6 = 0) OR (A7 = 0 AND A8 = 0)) THEN
	--DEAD CAT
	Q1	<=  "01111";
	Q2 <=  "01111";
	Q3	<=  "10011";
	Q4	<=  "10101";
	Q5	<=  "10101";
	Q6 <=  "10011";
	Q7 <=  "01111";
	Q8 <=  "01111";
	END IF;
	
	
	IF (SW2='1') THEN
	SS1	<=  Q8;
	SS2 	<=  Q7;
	SS3	<=  Q6;
	SS4	<=  Q5;
	SS5	<=  Q4;
	SS6  	<=  Q3;
	SS7  	<=  Q2;
	SS8  	<=  Q1;
	END IF;
	
	IF (SW2='0') THEN
	SS1	<=  A1;
	SS2 	<=  A2;
	SS3	<=  A3;
	SS4	<=  A4;
	SS5	<=  A5;
	SS6  	<=  A6;
	SS7  	<=  A7;
	SS8  	<=  A8;
	END IF;
	
	END IF;	
	
	
END PROCESS;



-- SEV_SEG DATA
WITH COUNTER SELECT SEV_SEG_DATA <=
 SS1		WHEN "000",
 SS2 		WHEN "001",
 SS3		WHEN "010",
 SS4	 	WHEN "011",
 SS5		WHEN "100",
 SS6  	WHEN "101",
 SS7  	WHEN "110",
 SS8  	WHEN "111",
 ---"1010"  WHEN "110", ---- HMM
 
"01111" WHEN OTHERS; 
--DATA END

--SEV_SEG_CONTROLLER
WITH COUNTER SELECT SEV_SEG_DRIVER <=
 "01111111"  WHEN "000",
 "10111111"  WHEN "001",
 "11011111"  WHEN "010",
 "11101111"  WHEN "011",
 "11110111"  WHEN "100",
 "11111011"  WHEN "101", 
 "11111101"  WHEN "110", 
 "11111110"  WHEN "111", 
----- "11010111"  WHEN "110", ---- HMM
 "11111111"  WHEN OTHERS; 
--SEV_SEG CONTROLLER END


END BEHAVIORAL;

