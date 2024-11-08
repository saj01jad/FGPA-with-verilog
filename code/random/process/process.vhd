library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


--entity process1 is
--	generic (
--			  len : integer := 8
--		 );
--	port( a: in std_logic_vector (len-1 downto 0);
--			b: in std_logic_vector (len-1 downto 0);
--			c: in std_logic_vector (len-1 downto 0);
--			max: out std_logic_vector (len-1 downto 0);
--			min: out std_logic_vector (len-1 downto 0) 
--		  );
--end process1;
--
--architecture Behavioral of process1 is
--begin
--
--	process (a, b, c)
--	begin
--		--sum <= a xor b;
--		--cout <= a and b;
--		------------------------------------------------------------
--		-- this type of conditanal command just can write in process
--		--	if conditan then
--		--		command
--		-- 	command 
--		-- elsif conditian then
--		--		command
--		-- 	command
--		-- else
--		--		command
--		-- 	command
--		-- end if;
--		
--		if ((a>b) and (a>c)) then 
--			max <= a;
--		elsif ((c>b) and (c>a)) then
--			max <= c;
--		elsif ((b>c) and (b>a)) then
--			max <= b;
--		end if;
--		----------------------------------------------------------
--	end process;
----	max <= a when ((a>b) and (a>c)) else
----			 c when (a>b) else
----			 b when (b>c) else
----			 c;
--end Behavioral;

entity process1 is
	port( a: in std_logic;
			b: in std_logic;
			enable: in std_logic;
			output: out std_logic_vector (3 downto 0) 
		  );
end process1;

architecture Behavioral of process1 is
	signal set: std_logic_vector (1 downto 0);
begin

	set <= (a& b); -- this is constant as wire 
	
	process (a, b, enable)
	begin
		if (enable = '0') then
			output <= "0000";
		elsif (set = "00") then
			output <= "0001";
		elsif (set = "01") then
			output <= "0010";
		elsif (set = "10") then
			output <= "0100";
		else
			output <= "1000";
		end if;
	end process;
end Behavioral;