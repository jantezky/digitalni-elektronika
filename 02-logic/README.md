# Lab 2: Jan Těžký

### Pre-Lab preparation
  | **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   |  1 | 0 0 | 0 0 | 0 | 1 | 0 |
   |  2 | 0 0 | 0 1 | 0 | 0 | 1 |
   |  3 | 0 0 | 1 0 | 0 | 0 | 1 |
   |  4 | 0 0 | 1 1 | 0 | 0 | 1 |
   |  5 | 0 1 | 0 0 | 1 | 0 | 0 |
   |  6 | 0 1 | 0 1 | 0 | 1 | 0 |
   |  7 | 0 1 | 1 0 | 0 | 0 | 1 |
   |  8 | 0 1 | 1 1 | 0 | 0 | 1 |
   |  9 | 1 0 | 0 0 | 1 | 0 | 0 |
   | 10 | 1 0 | 0 1 | 1 | 0 | 0 |
   | 11 | 1 0 | 1 0 | 0 | 1 | 0 |
   | 12 | 1 0 | 1 1 | 0 | 0 | 1 |
   | 13 | 1 1 | 0 0 | 1 | 0 | 0 |
   | 14 | 1 1 | 0 1 | 1 | 0 | 0 |
   | 15 | 1 1 | 1 0 | 1 | 0 | 0 |
   | 16 | 1 1 | 1 1 | 0 | 1 | 0 |

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](DE1_pc2.png)

   Less than:

   ![K-maps](DE_pc2b.png)


2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](DE_pc2_rovnice.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx17**

```vhdl
   p_stimulus : process
        begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0001"; 
        s_a <= "0111";
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination b=0001; a=0111 FAILED" severity error;
        
         -- Second test case
        s_b <= "0001"; 
        s_a <= "0111";
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination b=0001; a=0111 FAILED" severity error;
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/JaAg)
