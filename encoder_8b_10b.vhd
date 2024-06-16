library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_8b_10b is
    Port ( 
        clk : in std_logic;
        rst_n : in std_logic;
        data_in : in std_logic_vector(7 downto 0);
        data_out_p : out std_logic_vector(9 downto 0); -- diff positive
        data_out_n : out std_logic_vector(9 downto 0) -- diff negative
    );
end encoder_8b_10b;

architecture arch_encoder_8b_10b of encoder_8b_10b is
signal data_out, data_out_aux : std_logic_vector(9 downto 0);
begin
    
    process (clk, rst_n, data_in)
    begin
        if rst_n = '0' then
            data_out <= (others=>'0');
        elsif rising_edge(clk) then
            case data_in(4 downto 0) & data_in(7 downto 5) is
                when "00000000" =>  -- D0.0
                    data_out <= "0110001011";
                when "00000001" =>  -- D1.0
                    data_out <= "1000101011";
                when "00000010" =>  -- D2.0
                    data_out <= "0100101011";
                when "00000011" =>  -- D3.0
                    data_out <= "1100010100";
                when "00000100" =>  -- D4.0
                    data_out <= "0010101011";
                when "00000101" =>  -- D5.0
                    data_out <= "1010010100";
                when "00000110" =>  -- D6.0
                    data_out <= "0110010100";
                when "00000111" =>  -- D7.0
                    data_out <= "0001110100";
                when "00001000" =>  -- D8.0
                    data_out <= "0001101011";
                when "00001001" =>  -- D9.0
                    data_out <= "1001010100";
                when "00001010" =>  -- D10.0
                    data_out <= "0101010100";
                when "00001011" =>  -- D11.0
                    data_out <= "1101000100";
                when "00001100" =>  -- D12.0
                    data_out <= "0011010100";
                when "00001101" =>  -- D13.0
                    data_out <= "1011000100";
                when "00001110" =>  -- D14.0
                    data_out <= "0111000100";
                when "00001111" =>  -- D15.0
                    data_out <= "1010001011";
                when "00010000" =>  -- D16.0
                    data_out <= "1001001011";
                when "00010001" =>  -- D17.0
                    data_out <= "1000110100";
                when "00010010" =>  -- D18.0
                    data_out <= "0100110100";
                when "00010011" =>  -- D19.0
                    data_out <= "1100100100";
                when "00010100" =>  -- D20.0
                    data_out <= "0010110100";
                when "00010101" =>  -- D21.0
                    data_out <= "1010100100";
                when "00010110" =>  -- D22.0
                    data_out <= "0110100100";
                when "00010111" =>  -- D23.0
                    data_out <= "0001011011";
                when "00011000" =>  -- D24.0
                    data_out <= "0011001011";
                when "00011001" =>  -- D25.0
                    data_out <= "1001100100";
                when "00011010" =>  -- D26.0
                    data_out <= "0101100100";
                when "00011011" =>  -- D27.0
                    data_out <= "0010011011";
                when "00011100" =>  -- D28.0
                    data_out <= "0011100100";
                when "00011101" =>  -- D29.0
                    data_out <= "0100011011";
                when "00011110" =>  -- D30.0
                    data_out <= "1000011011";
                when "00011111" =>  -- D31.0
                    data_out <= "0101001011";
                when "00100000" =>  -- D0.1
                    data_out <= "0110001001";
                when "00100001" =>  -- D1.1
                    data_out <= "1000101001";
                when "00100010" =>  -- D2.1
                    data_out <= "0100101001";
                when "00100011" =>  -- D3.1
                    data_out <= "1100011001";
                when "00100100" =>  -- D4.1
                    data_out <= "0010101001";
                when "00100101" =>  -- D5.1
                    data_out <= "1010011001";
                when "00100110" =>  -- D6.1
                    data_out <= "0110011001";
                when "00100111" =>  -- D7.1
                    data_out <= "0001111001";
                when "00101000" =>  -- D8.1
                    data_out <= "0001101001";
                when "00101001" =>  -- D9.1
                    data_out <= "1001011001";
                when "00101010" =>  -- D10.1
                    data_out <= "0101011001";
                when "00101011" =>  -- D11.1
                    data_out <= "1101001001";
                when "00101100" =>  -- D12.1
                    data_out <= "0011011001";
                when "00101101" =>  -- D13.1
                    data_out <= "1011001001";
                when "00101110" =>  -- D14.1
                    data_out <= "0111001001";
                when "00101111" =>  -- D15.1
                    data_out <= "1010001001";
                when "00110000" =>  -- D16.1
                    data_out <= "1001001001";
                when "00110001" =>  -- D17.1
                    data_out <= "1000111001";
                when "00110010" =>  -- D18.1
                    data_out <= "0100111001";
                when "00110011" =>  -- D19.1
                    data_out <= "1100101001";
                when "00110100" =>  -- D20.1
                    data_out <= "0010111001";
                when "00110101" =>  -- D21.1
                    data_out <= "1010101001";
                when "00110110" =>  -- D22.1
                    data_out <= "0110101001";
                when "00110111" =>  -- D23.1
                    data_out <= "0001011001";
                when "00111000" =>  -- D24.1
                    data_out <= "0011001001";
                when "00111001" =>  -- D25.1
                    data_out <= "1001101001";
                when "00111010" =>  -- D26.1
                    data_out <= "0101101001";
                when "00111011" =>  -- D27.1
                    data_out <= "0010011001";
                when "00111100" =>  -- D28.1
                    data_out <= "0011101001";
                when "00111101" =>  -- D29.1
                    data_out <= "0100011001";
                when "00111110" =>  -- D30.1
                    data_out <= "1000011001";
                when "00111111" =>  -- D31.1
                    data_out <= "0101001001";
                when "01000000" =>  -- D0.2
                    data_out <= "0110000101";
                when "01000001" =>  -- D1.2
                    data_out <= "1000100101";
                when "01000010" =>  -- D2.2
                    data_out <= "0100100101";
                when "01000011" =>  -- D3.2
                    data_out <= "1100010101";
                when "01000100" =>  -- D4.2
                    data_out <= "0010100101";
                when "01000101" =>  -- D5.2
                    data_out <= "1010010101";
                when "01000110" =>  -- D6.2
                    data_out <= "0110010101";
                when "01000111" =>  -- D7.2
                    data_out <= "0001110101";
                when "01001000" =>  -- D8.2
                    data_out <= "0001100101";
                when "01001001" =>  -- D9.2
                    data_out <= "1001010101";
                when "01001010" =>  -- D10.2
                    data_out <= "0101010101";
                when "01001011" =>  -- D11.2
                    data_out <= "1101000101";
                when "01001100" =>  -- D12.2
                    data_out <= "0011010101";
                when "01001101" =>  -- D13.2
                    data_out <= "1011000101";
                when "01001110" =>  -- D14.2
                    data_out <= "0111000101";
                when "01001111" =>  -- D15.2
                    data_out <= "1010000101";
                when "01010000" =>  -- D16.2
                    data_out <= "1001000101";
                when "01010001" =>  -- D17.2
                    data_out <= "1000110101";
                when "01010010" =>  -- D18.2
                    data_out <= "0100110101";
                when "01010011" =>  -- D19.2
                    data_out <= "1100100101";
                when "01010100" =>  -- D20.2
                    data_out <= "0010110101";
                when "01010101" =>  -- D21.2
                    data_out <= "1010100101";
                when "01010110" =>  -- D22.2
                    data_out <= "0110100101";
                when "01010111" =>  -- D23.2
                    data_out <= "0001010101";
                when "01011000" =>  -- D24.2
                    data_out <= "0011000101";
                when "01011001" =>  -- D25.2
                    data_out <= "1001100101";
                when "01011010" =>  -- D26.2
                    data_out <= "0101100101";
                when "01011011" =>  -- D27.2
                    data_out <= "0010010101";
                when "01011100" =>  -- D28.2
                    data_out <= "0011100101";
                when "01011101" =>  -- D29.2
                    data_out <= "0100010101";
                when "01011110" =>  -- D30.2
                    data_out <= "1000010101";
                when "01011111" =>  -- D31.2
                    data_out <= "0101000101";
                when "01100000" =>  -- D0.3
                    data_out <= "0110001100";
                when "01100001" =>  -- D1.3
                    data_out <= "1000101100";
                when "01100010" =>  -- D2.3
                    data_out <= "0100101100";
                when "01100011" =>  -- D3.3
                    data_out <= "1100010011";
                when "01100100" =>  -- D4.3
                    data_out <= "0010101100";
                when "01100101" =>  -- D5.3
                    data_out <= "1010010011";
                when "01100110" =>  -- D6.3
                    data_out <= "0110010011";
                when "01100111" =>  -- D7.3
                    data_out <= "0001110011";
                when "01101000" =>  -- D8.3
                    data_out <= "0001101100";
                when "01101001" =>  -- D9.3
                    data_out <= "1001010011";
                when "01101010" =>  -- D10.3
                    data_out <= "0101010011";
                when "01101011" =>  -- D11.3
                    data_out <= "1101000011";
                when "01101100" =>  -- D12.3
                    data_out <= "0011010011";
                when "01101101" =>  -- D13.3
                    data_out <= "1011000011";
                when "01101110" =>  -- D14.3
                    data_out <= "0111000011";
                when "01101111" =>  -- D15.3
                    data_out <= "1010001100";
                when "01110000" =>  -- D16.3
                    data_out <= "1001001100";
                when "01110001" =>  -- D17.3
                    data_out <= "1000110011";
                when "01110010" =>  -- D18.3
                    data_out <= "0100110011";
                when "01110011" =>  -- D19.3
                    data_out <= "1100100011";
                when "01110100" =>  -- D20.3
                    data_out <= "0010110011";
                when "01110101" =>  -- D21.3
                    data_out <= "1010100011";
                when "01110110" =>  -- D22.3
                    data_out <= "0110100011";
                when "01110111" =>  -- D23.3
                    data_out <= "0001011100";
                when "01111000" =>  -- D24.3
                    data_out <= "0011001100";
                when "01111001" =>  -- D25.3
                    data_out <= "1001100011";
                when "01111010" =>  -- D26.3
                    data_out <= "0101100011";
                when "01111011" =>  -- D27.3
                    data_out <= "0010011100";
                when "01111100" =>  -- D28.3
                    data_out <= "0011100011";
                when "01111101" =>  -- D29.3
                    data_out <= "0100011100";
                when "01111110" =>  -- D30.3
                    data_out <= "1000011100";
                when "01111111" =>  -- D31.3
                    data_out <= "0101001100";
                when "10000000" =>  -- D0.4
                    data_out <= "0110001101";
                when "10000001" =>  -- D1.4
                    data_out <= "1000101101";
                when "10000010" =>  -- D2.4
                    data_out <= "0100101101";
                when "10000011" =>  -- D3.4
                    data_out <= "1100010010";
                when "10000100" =>  -- D4.4
                    data_out <= "0010101101";
                when "10000101" =>  -- D5.4
                    data_out <= "1010010010";
                when "10000110" =>  -- D6.4
                    data_out <= "0110010010";
                when "10000111" =>  -- D7.4
                    data_out <= "0001110010";
                when "10001000" =>  -- D8.4
                    data_out <= "0001101101";
                when "10001001" =>  -- D9.4
                    data_out <= "1001010010";
                when "10001010" =>  -- D10.4
                    data_out <= "0101010010";
                when "10001011" =>  -- D11.4
                    data_out <= "1101000010";
                when "10001100" =>  -- D12.4
                    data_out <= "0011010010";
                when "10001101" =>  -- D13.4
                    data_out <= "1011000010";
                when "10001110" =>  -- D14.4
                    data_out <= "0111000010";
                when "10001111" =>  -- D15.4
                    data_out <= "1010001101";
                when "10010000" =>  -- D16.4
                    data_out <= "1001001101";
                when "10010001" =>  -- D17.4
                    data_out <= "1000110010";
                when "10010010" =>  -- D18.4
                    data_out <= "0100110010";
                when "10010011" =>  -- D19.4
                    data_out <= "1100100010";
                when "10010100" =>  -- D20.4
                    data_out <= "0010110010";
                when "10010101" =>  -- D21.4
                    data_out <= "1010100010";
                when "10010110" =>  -- D22.4
                    data_out <= "0110100010";
                when "10010111" =>  -- D23.4
                    data_out <= "0001011101";
                when "10011000" =>  -- D24.4
                    data_out <= "0011001101";
                when "10011001" =>  -- D25.4
                    data_out <= "1001100010";
                when "10011010" =>  -- D26.4
                    data_out <= "0101100010";
                when "10011011" =>  -- D27.4
                    data_out <= "0010011101";
                when "10011100" =>  -- D28.4
                    data_out <= "0011100010";
                when "10011101" =>  -- D29.4
                    data_out <= "0100011101";
                when "10011110" =>  -- D30.4
                    data_out <= "1000011101";
                when "10011111" =>  -- D31.4
                    data_out <= "0101001101";
                when "10100000" =>  -- D0.5
                    data_out <= "0110001010";
                when "10100001" =>  -- D1.5
                    data_out <= "1000101010";
                when "10100010" =>  -- D2.5
                    data_out <= "0100101010";
                when "10100011" =>  -- D3.5
                    data_out <= "1100011010";
                when "10100100" =>  -- D4.5
                    data_out <= "0010101010";
                when "10100101" =>  -- D5.5
                    data_out <= "1010011010";
                when "10100110" =>  -- D6.5
                    data_out <= "0110011010";
                when "10100111" =>  -- D7.5
                    data_out <= "0001111010";
                when "10101000" =>  -- D8.5
                    data_out <= "0001101010";
                when "10101001" =>  -- D9.5
                    data_out <= "1001011010";
                when "10101010" =>  -- D10.5
                    data_out <= "0101011010";
                when "10101011" =>  -- D11.5
                    data_out <= "1101001010";
                when "10101100" =>  -- D12.5
                    data_out <= "0011011010";
                when "10101101" =>  -- D13.5
                    data_out <= "1011001010";
                when "10101110" =>  -- D14.5
                    data_out <= "0111001010";
                when "10101111" =>  -- D15.5
                    data_out <= "1010001010";
                when "10110000" =>  -- D16.5
                    data_out <= "1001001010";
                when "10110001" =>  -- D17.5
                    data_out <= "1000111010";
                when "10110010" =>  -- D18.5
                    data_out <= "0100111010";
                when "10110011" =>  -- D19.5
                    data_out <= "1100101010";
                when "10110100" =>  -- D20.5
                    data_out <= "0010111010";
                when "10110101" =>  -- D21.5
                    data_out <= "1010101010";
                when "10110110" =>  -- D22.5
                    data_out <= "0110101010";
                when "10110111" =>  -- D23.5
                    data_out <= "0001011010";
                when "10111000" =>  -- D24.5
                    data_out <= "0011001010";
                when "10111001" =>  -- D25.5
                    data_out <= "1001101010";
                when "10111010" =>  -- D26.5
                    data_out <= "0101101010";
                when "10111011" =>  -- D27.5
                    data_out <= "0010011010";
                when "10111100" =>  -- D28.5
                    data_out <= "0011101010";
                when "10111101" =>  -- D29.5
                    data_out <= "0100011010";
                when "10111110" =>  -- D30.5
                    data_out <= "1000011010";
                when "10111111" =>  -- D31.5
                    data_out <= "0101001010";
                when "11000000" =>  -- D0.6
                    data_out <= "0110000110";
                when "11000001" =>  -- D1.6
                    data_out <= "1000100110";
                when "11000010" =>  -- D2.6
                    data_out <= "0100100110";
                when "11000011" =>  -- D3.6
                    data_out <= "1100010110";
                when "11000100" =>  -- D4.6
                    data_out <= "0010100110";
                when "11000101" =>  -- D5.6
                    data_out <= "1010010110";
                when "11000110" =>  -- D6.6
                    data_out <= "0110010110";
                when "11000111" =>  -- D7.6
                    data_out <= "0001110110";
                when "11001000" =>  -- D8.6
                    data_out <= "0001100110";
                when "11001001" =>  -- D9.6
                    data_out <= "1001010110";
                when "11001010" =>  -- D10.6
                    data_out <= "0101010110";
                when "11001011" =>  -- D11.6
                    data_out <= "1101000110";
                when "11001100" =>  -- D12.6
                    data_out <= "0011010110";
                when "11001101" =>  -- D13.6
                    data_out <= "1011000110";
                when "11001110" =>  -- D14.6
                    data_out <= "0111000110";
                when "11001111" =>  -- D15.6
                    data_out <= "1010000110";
                when "11010000" =>  -- D16.6
                    data_out <= "1001000110";
                when "11010001" =>  -- D17.6
                    data_out <= "1000110110";
                when "11010010" =>  -- D18.6
                    data_out <= "0100110110";
                when "11010011" =>  -- D19.6
                    data_out <= "1100100110";
                when "11010100" =>  -- D20.6
                    data_out <= "0010110110";
                when "11010101" =>  -- D21.6
                    data_out <= "1010100110";
                when "11010110" =>  -- D22.6
                    data_out <= "0110100110";
                when "11010111" =>  -- D23.6
                    data_out <= "0001010110";
                when "11011000" =>  -- D24.6
                    data_out <= "0011000110";
                when "11011001" =>  -- D25.6
                    data_out <= "1001100110";
                when "11011010" =>  -- D26.6
                    data_out <= "0101100110";
                when "11011011" =>  -- D27.6
                    data_out <= "0010010110";
                when "11011100" =>  -- D28.6
                    data_out <= "0011100110";
                when "11011101" =>  -- D29.6
                    data_out <= "0100010110";
                when "11011110" =>  -- D30.6
                    data_out <= "1000010110";
                when "11011111" =>  -- D31.6
                    data_out <= "0101000110";
                when "11100000" =>  -- D0.7
                    data_out <= "0110001110";
                when "11100001" =>  -- D1.7
                    data_out <= "1000101110";
                when "11100010" =>  -- D2.7
                    data_out <= "0100101110";
                when "11100011" =>  -- D3.7
                    data_out <= "1100010001";
                when "11100100" =>  -- D4.7
                    data_out <= "0010101110";
                when "11100101" =>  -- D5.7
                    data_out <= "1010010001";
                when "11100110" =>  -- D6.7
                    data_out <= "0110010001";
                when "11100111" =>  -- D7.7
                    data_out <= "0001110001";
                when "11101000" =>  -- D8.7
                    data_out <= "0001101110";
                when "11101001" =>  -- D9.7
                    data_out <= "1001010001";
                when "11101010" =>  -- D10.7
                    data_out <= "0101010001";
                when "11101011" =>  -- D11.7
                    data_out <= "1101001000";
                when "11101100" =>  -- D12.7
                    data_out <= "0011010001";
                when "11101101" =>  -- D13.7
                    data_out <= "1011001000";
                when "11101110" =>  -- D14.7
                    data_out <= "0111001000";
                when "11101111" =>  -- D15.7
                    data_out <= "1010001110";
                when "11110000" =>  -- D16.7
                    data_out <= "1001001110";
                when "11110001" =>  -- D17.7
                    data_out <= "1000110001";
                when "11110010" =>  -- D18.7
                    data_out <= "0100110001";
                when "11110011" =>  -- D19.7
                    data_out <= "1100100001";
                when "11110100" =>  -- D20.7
                    data_out <= "0010110001";
                when "11110101" =>  -- D21.7
                    data_out <= "1010100001";
                when "11110110" =>  -- D22.7
                    data_out <= "0110100001";
                when "11110111" =>  -- D23.7
                    data_out <= "0001011110";
                when "11111000" =>  -- D24.7
                    data_out <= "0011001110";
                when "11111001" =>  -- D25.7
                    data_out <= "1001100001";
                when "11111010" =>  -- D26.7
                    data_out <= "0101100001";
                when "11111011" =>  -- D27.7
                    data_out <= "0010011110";
                when "11111100" =>  -- D28.7
                    data_out <= "0011100001";
                when "11111101" =>  -- D29.7
                    data_out <= "0100011110";
                when "11111110" =>  -- D30.7
                    data_out <= "1000011110";
                when "11111111" =>  -- D31.7
                    data_out <= "0101001110";
                when others => 
                    data_out <= (others=>'0');
                
            end case;
        end if;
    end process;
    
    
    data_out_aux <= not data_out;
    
    process (clk, rst_n, data_out)
    begin
        if rst_n = '0' then
            data_out_p <= (others=>'0');
            data_out_n <= (others=>'1');
        elsif rising_edge(clk) then
            data_out_p <= data_out;
            data_out_n <= data_out_aux;
        end if; 
    end process;

end arch_encoder_8b_10b;
