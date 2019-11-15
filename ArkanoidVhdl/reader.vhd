----------------------------------------------------------------------------------
-- File Name: reader.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity reader is
    Port ( clk, reset, direction, fade, fading : in STD_LOGIC;
			  row : in  STD_LOGIC_VECTOR (9 downto 0);
           col : in  STD_LOGIC_VECTOR (9 downto 0);
           addr : out  STD_LOGIC_VECTOR (14 downto 0);
			  datain : in  STD_LOGIC_VECTOR (2 downto 0);
			  pila_pos_x : in STD_LOGIC_VECTOR (9 downto 0);
			  R, G, B : out  STD_LOGIC
			  );
end reader;

architecture Behavioral of reader is
 
 -- Posiciones P(x,y)para graficar la imagen en la pantalla
	
         --  P1__________________P2			*---------> X	
			--  |							|			|
			--  |							|			|
			--  |							|			| SISTEMA DE COORDENADAS
			--  |		  IMAGEN			|			|
			--  |							|			V
			--  |							|			Y
			--  P3__________________P4
			
	
	--POSICIONES PARA LA PILA O BARRA DE JUEGO
	
		signal xtopBar : std_logic_vector (9 downto 0) := "0011010000";
		signal xbottomBar : std_logic_vector (9 downto 0) := "0100010111";
		constant ytopBar : integer := 400;
		constant ybottomBar : integer := 420;
	
	
	--POSICIONES Y PARA LOS BLOQUES

		constant ytopBlocks : integer := 80;
		constant ybottomBlocks : integer := 120;
		
	--POSICIONES PARA LAS BARRAS MARCO

		constant ytopM13 : integer := 0;
		constant ybottomM13 : integer := 480;
		constant ytopM2 : integer := 0;
		constant ybottomM2 : integer := 20;
		constant xtopM1 : integer := 0;
		constant xbottomM1 : integer := 20;
		constant xtopM2 : integer := 0;
		constant xbottomM2 : integer := 640;
		constant xtopM3 : integer := 620;
		constant xbottomM3 : integer := 640;
		
	--POSICIONES X PARA BLOQUES AMARILLOS
		
		constant xtopYellow1 : integer := 45;
		constant xbottomYellow1 : integer := 90;
		constant xtopYellow2 : integer := 315;
		constant xbottomYellow2 : integer := 360;
		constant xtopYellow3 : integer := 180;
		constant xbottomYellow3 : integer := 225;
		
	--POSICIONES X PARA BLOQUES AZULES
		
		constant xtopBlue1 : integer := 90;
		constant xbottomBlue1 : integer := 135;
		constant xtopBlue2 : integer := 360;
		constant xbottomBlue2 : integer := 405;
		constant xtopBlue3 : integer := 540;
		constant xbottomBlue3 : integer := 585;

	--POSICIONES X PARA BLOQUES ROJO
		
		constant xtopRed1 : integer := 135;
		constant xbottomRed1 : integer := 180;
		constant xtopRed2 : integer := 450;
		constant xbottomRed2 : integer := 495;
		constant xtopRed3 : integer := 270;
		constant xbottomRed3 : integer := 315;
		
	--POSICIONES X PARA BLOQUES VERDE
		
		constant xtopGreen1 : integer := 405;
		constant xbottomGreen1 : integer := 450;
		constant xtopGreen2 : integer := 495;
		constant xbottomGreen2 : integer := 540;
		constant xtopGreen3 : integer := 225;
		constant xbottomGreen3 : integer := 270;
		
	-- Direcciones imagen en memoria
	signal addr_normal : STD_LOGIC_VECTOR (14 downto 0) := (others => '0');
	
begin

	c_normal: process (clk, reset)
	--habilita la visualizacion de la imagen de la pila
	variable en_img : std_logic:= '0';
	variable y_img : std_logic:= '0';
	variable b_img : std_logic:= '0';
	variable r_img : std_logic:= '0';
	variable g_img : std_logic:= '0';
	variable w_img : std_logic:= '0';


	begin
			
		if clk'event and clk='1' then

			-- Asignando la posicion de la pila
			if row = 0 and col = 0 then
				xtopBar <= pila_pos_x;
				xbottomBar <= pila_pos_x + 150;
			end if;
		
			--si el controlador esta mostrando los pixeles ubicados dentro del marco de la imagen en la pantalla
			--entonces se lee la informacion de color almacenada en la memoria. Caso contrario pinta el pixel de color
			--negro
		
			if (row >= ytopBar) and (row <= ybottomBar) then
				if (col >= xtopBar) and (col <= xbottomBar) then
					en_img:='1';	
				else
					en_img:='0';
				end if;
			end if;
			if (row >= ytopBlocks) and (row <= ybottomBlocks) then
				if (col >= xtopYellow1 ) and (col <= xbottomYellow1) then
					y_img:='1';	
				elsif (col >= xtopYellow2 ) and (col <= xbottomYellow2) then
					y_img:='1';
				elsif (col >= xtopYellow3 ) and (col <= xbottomYellow3) then
					y_img:='1';	
				else
					y_img:='0';
				end if;
				
				if (col >= xtopBlue1 ) and (col <= xbottomBlue1) then
					b_img:='1';	
				elsif (col >= xtopBlue2 ) and (col <= xbottomBlue2) then
					b_img:='1';
				elsif (col >= xtopBlue3 ) and (col <= xbottomBlue3) then
					b_img:='1';	
				else
					b_img:='0';
				end if;
				
				if (col >= xtopRed1 ) and (col <= xbottomRed1) then
					r_img:='1';	
				elsif (col >= xtopRed2 ) and (col <= xbottomRed2) then
					r_img:='1';
				elsif (col >= xtopRed3 ) and (col <= xbottomRed3) then
					r_img:='1';	
				else
					r_img:='0';
				end if;
				
				if (col >= xtopGreen1 ) and (col <= xbottomGreen1) then
					g_img:='1';	
				elsif (col >= xtopGreen2 ) and (col <= xbottomGreen2) then
					g_img:='1';
				elsif (col >= xtopGreen3 ) and (col <= xbottomGreen3) then
					g_img:='1';	
				else
					g_img:='0';
				end if;
			end if;
			
			
			if (row >= ytopM13) and (row <= ybottomM13) then
				if (col >= xtopM1 ) and (col <= xbottomM1) then
					w_img:='1';	
				elsif (col >= xtopM3 ) and (col <= xbottomM3) then
					w_img:='1';	
				else
					w_img:='0';
				end if;
			end if;
			
			if (row >= ytopM2) and (row <= ybottomM2) then
				if (col >= xtopM2 ) and (col <= xbottomM2) then
					w_img:='1';		
				else
					w_img:='0';
				end if;
			end if;
			
		end if;
		
		if reset = '0'  then
			--addr_normal <= (others => '0');
			en_img:='0';
			y_img:='0';
			b_img:='0';
			r_img:='0';
			g_img:='0';
			w_img:='0';

					
		if(en_img='1') then
			R<='1';
			G<='1';
			B<='1';			
		elsif(y_img='1') then 
			R<='1';
			G<='1';
			B<='0';
		elsif(b_img='1') then 
			R<='0';
			G<='0';
			B<='1';
		elsif(r_img='1') then 
			R<='1';
			G<='0';
			B<='0';
		elsif(g_img='1') then 
			R<='0';
			G<='1';
			B<='0';
		elsif(w_img='1') then 
			R<='1';
			G<='1';
			B<='1';
		else			 
			R<='0';
			G<='0';
			B<='0';				
		end if; 
		
	elsif clk'event and clk='1' then
		--pinta la imagen y pinta el fondo azul			
		if(en_img='1') then
			R<='1';
			G<='1';
			B<='1';
		elsif(y_img='1') then 
			R<='1';
			G<='1';
			B<='0';
		elsif(b_img='1') then 
			R<='0';
			G<='0';
			B<='1';	
		elsif(r_img='1') then 
			R<='1';
			G<='0';
			B<='0';
		elsif(g_img='1') then 
			R<='0';
			G<='1';
			B<='0';
		elsif(w_img='1') then 
			R<='1';
			G<='1';
			B<='1';
		else			 
			R<='0';
			G<='1';
			B<='1';	
		end if;
	end if;
	
end process c_normal;

addr <= addr_normal;

end Behavioral;
