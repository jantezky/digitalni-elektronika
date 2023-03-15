----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2023 02:14:43 PM
-- Design Name: 
-- Module Name: jk_ff_rst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           j : in STD_LOGIC;
           k : in STD_LOGIC;
           q : out STD_LOGIC;
           q_bar : out STD_LOGIC);
end jk_ff_rst;

architecture Behavioral of jk_ff_rst is
    signal q_int : STD_LOGIC;
begin
    process (clk)
    begin
        if rising_edge(clk) then
        -- WRITE YOUR CODE HERE

            if (j = '0' and k = '1') then 
                sig_q     <= '0';
                
            elsif (j = '0' and k = '0') then
                sig_q     <= sig_q;
                
            elsif (j = '1' and k = '0') then
                sig_q     <= '1';
             
            elsif (j = '1' and k = '1') then 
                sig_q <= not sig_q;
                
            elsif (rst = '1') then 
            	sig_q <= '0';

            end if;
        end if;
    end process;
    
    -- output q and q_bar
    q <= q_int;
    q_bar <= not q_int;
end Behavioral;
