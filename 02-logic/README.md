2-bit comparator
Karnaugh maps for other two functions of 2-bit comparator:

Greater than:

K-maps

Less than:

K-maps

Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

Logic functions

4-bit comparator
Listing of VHDL stimulus process from testbench file (testbench.vhd) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

Last two digits of my student ID: xxxx??

    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "BCD_OF_YOUR_SECOND_LAST_ID_DIGIT"; -- Such as "0101" if ID = xxxx56
        s_a <= "BCD_OF_YOUR_LAST_ID_DIGIT";        -- Such as "0110" if ID = xxxx56
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_equals_A  = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_less_A    = 'WRITE_CORRECT_VALUE_HERE'))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
Link to your public EDA Playground example:

https://www.edaplayground.com/...