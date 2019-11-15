--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : VGA_image_tets.vhf
-- /___/   /\     Timestamp : 11/13/2019 16:56:23
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath "C:/Users/nicol/Downloads/VGA_image (2)/VGA_image/ipcore_dir" -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/nicol/Downloads/VGA_image (2)/VGA_image/VGA_image_tets.vhf" -w "C:/Users/nicol/Downloads/VGA_image (2)/VGA_image/VGA_image_tets.sch"
--Design Name: VGA_image_tets
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity VGA_image_tets is
   port ( CLK_50MHZ  : in    std_logic; 
          ROT_A      : in    std_logic; 
          ROT_B      : in    std_logic; 
          ROT_CENTER : in    std_logic; 
          SW0        : in    std_logic; 
          SW2        : in    std_logic; 
          SW3        : in    std_logic; 
          VGA_BLUE   : out   std_logic; 
          VGA_GREEN  : out   std_logic; 
          VGA_HSYNC  : out   std_logic; 
          VGA_RED    : out   std_logic; 
          VGA_VSYNC  : out   std_logic);
end VGA_image_tets;

architecture BEHAVIORAL of VGA_image_tets is
   signal XLXN_24    : std_logic;
   signal XLXN_25    : std_logic;
   signal XLXN_27    : std_logic;
   signal XLXN_35    : std_logic;
   signal XLXN_38    : std_logic_vector (9 downto 0);
   signal XLXN_40    : std_logic_vector (2 downto 0);
   signal XLXN_41    : std_logic_vector (14 downto 0);
   signal XLXN_44    : std_logic;
   signal XLXN_46    : std_logic_vector (9 downto 0);
   signal XLXN_48    : std_logic_vector (9 downto 0);
   component Clk_div_25MHz
      port ( clk       : in    std_logic; 
             clk_25MHz : out   std_logic);
   end component;
   
   component VGA_SYNC
      port ( clock_25Mhz    : in    std_logic; 
             red            : in    std_logic; 
             green          : in    std_logic; 
             blue           : in    std_logic; 
             red_out        : out   std_logic; 
             green_out      : out   std_logic; 
             blue_out       : out   std_logic; 
             horiz_sync_out : out   std_logic; 
             vert_sync_out  : out   std_logic; 
             pixel_row      : out   std_logic_vector (9 downto 0); 
             pixel_column   : out   std_logic_vector (9 downto 0));
   end component;
   
   component mymemory
      port ( addra : in    std_logic_vector (14 downto 0); 
             clka  : in    std_logic; 
             douta : out   std_logic_vector (2 downto 0));
   end component;
   
   component reader
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             direction  : in    std_logic; 
             fade       : in    std_logic; 
             fading     : in    std_logic; 
             row        : in    std_logic_vector (9 downto 0); 
             col        : in    std_logic_vector (9 downto 0); 
             datain     : in    std_logic_vector (2 downto 0); 
             R          : out   std_logic; 
             G          : out   std_logic; 
             B          : out   std_logic; 
             addr       : out   std_logic_vector (14 downto 0); 
             pila_pos_x : in    std_logic_vector (9 downto 0));
   end component;
   
   component left_right_leds
      port ( rotary_a     : in    std_logic; 
             rotary_b     : in    std_logic; 
             rotary_press : in    std_logic; 
             clk          : in    std_logic; 
             vista        : out   std_logic; 
             position_x   : out   std_logic_vector (9 downto 0));
   end component;
   
begin
   XLXI_1 : Clk_div_25MHz
      port map (clk=>CLK_50MHZ,
                clk_25MHz=>XLXN_35);
   
   XLXI_2 : VGA_SYNC
      port map (blue=>XLXN_27,
                clock_25Mhz=>XLXN_35,
                green=>XLXN_25,
                red=>XLXN_24,
                blue_out=>VGA_BLUE,
                green_out=>VGA_GREEN,
                horiz_sync_out=>VGA_HSYNC,
                pixel_column(9 downto 0)=>XLXN_46(9 downto 0),
                pixel_row(9 downto 0)=>XLXN_38(9 downto 0),
                red_out=>VGA_RED,
                vert_sync_out=>VGA_VSYNC);
   
   XLXI_4 : mymemory
      port map (addra(14 downto 0)=>XLXN_41(14 downto 0),
                clka=>XLXN_35,
                douta(2 downto 0)=>XLXN_40(2 downto 0));
   
   XLXI_5 : reader
      port map (clk=>XLXN_35,
                col(9 downto 0)=>XLXN_46(9 downto 0),
                datain(2 downto 0)=>XLXN_40(2 downto 0),
                direction=>XLXN_44,
                fade=>SW3,
                fading=>SW2,
                pila_pos_x(9 downto 0)=>XLXN_48(9 downto 0),
                reset=>SW0,
                row(9 downto 0)=>XLXN_38(9 downto 0),
                addr(14 downto 0)=>XLXN_41(14 downto 0),
                B=>XLXN_27,
                G=>XLXN_25,
                R=>XLXN_24);
   
   XLXI_6 : left_right_leds
      port map (clk=>XLXN_35,
                rotary_a=>ROT_A,
                rotary_b=>ROT_B,
                rotary_press=>ROT_CENTER,
                position_x(9 downto 0)=>XLXN_48(9 downto 0),
                vista=>XLXN_44);
   
end BEHAVIORAL;


