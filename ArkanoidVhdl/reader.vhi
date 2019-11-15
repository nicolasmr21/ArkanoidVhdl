
-- VHDL Instantiation Created from source file reader.vhd -- 20:50:11 10/23/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reader
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		direction : IN std_logic;
		fade : IN std_logic;
		fading : IN std_logic;
		row : IN std_logic_vector(9 downto 0);
		col : IN std_logic_vector(9 downto 0);
		datain : IN std_logic_vector(2 downto 0);
		pato_pos_x : IN std_logic_vector(9 downto 0);          
		addr : OUT std_logic_vector(14 downto 0);
		R : OUT std_logic;
		G : OUT std_logic;
		B : OUT std_logic
		);
	END COMPONENT;

	Inst_reader: reader PORT MAP(
		clk => ,
		reset => ,
		direction => ,
		fade => ,
		fading => ,
		row => ,
		col => ,
		addr => ,
		datain => ,
		pato_pos_x => ,
		R => ,
		G => ,
		B => 
	);


