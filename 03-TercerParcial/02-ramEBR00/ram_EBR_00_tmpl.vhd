-- VHDL module instantiation generated by SCUBA Diamond (64-bit) 3.12.0.240.2
-- Module  Version: 7.5
-- Mon May 23 11:35:34 2022

-- parameterized module component declaration
component ram_EBR_00
    port (Clock: in  std_logic; ClockEn: in  std_logic; 
        Reset: in  std_logic; WE: in  std_logic; 
        Address: in  std_logic_vector(5 downto 0); 
        Data: in  std_logic_vector(7 downto 0); 
        Q: out  std_logic_vector(7 downto 0));
end component;

-- parameterized module component instance
__ : ram_EBR_00
    port map (Clock=>__, ClockEn=>__, Reset=>__, WE=>__, Address(5 downto 0)=>__, 
        Data(7 downto 0)=>__, Q(7 downto 0)=>__);