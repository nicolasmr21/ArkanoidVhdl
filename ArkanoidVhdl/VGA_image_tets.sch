<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="VGA_RED" />
        <signal name="VGA_GREEN" />
        <signal name="VGA_BLUE" />
        <signal name="VGA_HSYNC" />
        <signal name="VGA_VSYNC" />
        <signal name="CLK_50MHZ" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="XLXN_35" />
        <signal name="XLXN_38(9:0)" />
        <signal name="SW0" />
        <signal name="XLXN_40(2:0)" />
        <signal name="XLXN_41(14:0)" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="ROT_CENTER" />
        <signal name="XLXN_44" />
        <signal name="SW3" />
        <signal name="XLXN_46(9:0)" />
        <signal name="SW2" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48(9:0)" />
        <port polarity="Output" name="VGA_RED" />
        <port polarity="Output" name="VGA_GREEN" />
        <port polarity="Output" name="VGA_BLUE" />
        <port polarity="Output" name="VGA_HSYNC" />
        <port polarity="Output" name="VGA_VSYNC" />
        <port polarity="Input" name="CLK_50MHZ" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="ROT_CENTER" />
        <port polarity="Input" name="SW3" />
        <port polarity="Input" name="SW2" />
        <blockdef name="Clk_div_25MHz">
            <timestamp>2012-10-23T16:11:25</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VGA_SYNC">
            <timestamp>2012-10-23T16:11:21</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="reader">
            <timestamp>2019-11-13T21:49:57</timestamp>
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <rect width="256" x="64" y="-320" height="640" />
        </blockdef>
        <blockdef name="mymemory">
            <timestamp>2012-10-23T19:54:18</timestamp>
            <rect width="512" x="32" y="32" height="324" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="left_right_leds">
            <timestamp>2012-10-23T23:53:8</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <block symbolname="Clk_div_25MHz" name="XLXI_1">
            <blockpin signalname="CLK_50MHZ" name="clk" />
            <blockpin signalname="XLXN_35" name="clk_25MHz" />
        </block>
        <block symbolname="VGA_SYNC" name="XLXI_2">
            <blockpin signalname="XLXN_35" name="clock_25Mhz" />
            <blockpin signalname="XLXN_24" name="red" />
            <blockpin signalname="XLXN_25" name="green" />
            <blockpin signalname="XLXN_27" name="blue" />
            <blockpin signalname="VGA_RED" name="red_out" />
            <blockpin signalname="VGA_GREEN" name="green_out" />
            <blockpin signalname="VGA_BLUE" name="blue_out" />
            <blockpin signalname="VGA_HSYNC" name="horiz_sync_out" />
            <blockpin signalname="VGA_VSYNC" name="vert_sync_out" />
            <blockpin signalname="XLXN_38(9:0)" name="pixel_row(9:0)" />
            <blockpin signalname="XLXN_46(9:0)" name="pixel_column(9:0)" />
        </block>
        <block symbolname="mymemory" name="XLXI_4">
            <blockpin signalname="XLXN_41(14:0)" name="addra(14:0)" />
            <blockpin signalname="XLXN_35" name="clka" />
            <blockpin signalname="XLXN_40(2:0)" name="douta(2:0)" />
        </block>
        <block symbolname="reader" name="XLXI_5">
            <blockpin signalname="XLXN_35" name="clk" />
            <blockpin signalname="SW0" name="reset" />
            <blockpin signalname="XLXN_44" name="direction" />
            <blockpin signalname="SW3" name="fade" />
            <blockpin signalname="SW2" name="fading" />
            <blockpin signalname="XLXN_38(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_46(9:0)" name="col(9:0)" />
            <blockpin signalname="XLXN_40(2:0)" name="datain(2:0)" />
            <blockpin signalname="XLXN_24" name="R" />
            <blockpin signalname="XLXN_25" name="G" />
            <blockpin signalname="XLXN_27" name="B" />
            <blockpin signalname="XLXN_41(14:0)" name="addr(14:0)" />
            <blockpin signalname="XLXN_48(9:0)" name="pila_pos_x(9:0)" />
        </block>
        <block symbolname="left_right_leds" name="XLXI_6">
            <blockpin signalname="ROT_A" name="rotary_a" />
            <blockpin signalname="ROT_B" name="rotary_b" />
            <blockpin signalname="ROT_CENTER" name="rotary_press" />
            <blockpin signalname="XLXN_35" name="clk" />
            <blockpin signalname="XLXN_44" name="vista" />
            <blockpin signalname="XLXN_48(9:0)" name="position_x(9:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2560" y="1504" name="XLXI_2" orien="R0">
        </instance>
        <branch name="VGA_RED">
            <wire x2="3056" y1="1088" y2="1088" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1088" name="VGA_RED" orien="R0" />
        <branch name="VGA_GREEN">
            <wire x2="3056" y1="1152" y2="1152" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1152" name="VGA_GREEN" orien="R0" />
        <branch name="VGA_BLUE">
            <wire x2="3056" y1="1216" y2="1216" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1216" name="VGA_BLUE" orien="R0" />
        <branch name="VGA_HSYNC">
            <wire x2="3056" y1="1280" y2="1280" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1280" name="VGA_HSYNC" orien="R0" />
        <branch name="VGA_VSYNC">
            <wire x2="3056" y1="1344" y2="1344" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1344" name="VGA_VSYNC" orien="R0" />
        <branch name="CLK_50MHZ">
            <wire x2="368" y1="1152" y2="1152" x1="336" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2544" y1="1264" y2="1264" x1="2272" />
            <wire x2="2560" y1="1216" y2="1216" x1="2544" />
            <wire x2="2544" y1="1216" y2="1264" x1="2544" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2544" y1="1344" y2="1344" x1="2272" />
            <wire x2="2560" y1="1344" y2="1344" x1="2544" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2544" y1="1424" y2="1424" x1="2272" />
            <wire x2="2544" y1="1424" y2="1472" x1="2544" />
            <wire x2="2560" y1="1472" y2="1472" x1="2544" />
        </branch>
        <instance x="1024" y="1136" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="336" y="1152" name="CLK_50MHZ" orien="R180" />
        <instance x="368" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_35">
            <wire x2="912" y1="1152" y2="1152" x1="752" />
            <wire x2="912" y1="1152" y2="1408" x1="912" />
            <wire x2="1024" y1="1408" y2="1408" x1="912" />
            <wire x2="912" y1="1408" y2="1824" x1="912" />
            <wire x2="992" y1="1824" y2="1824" x1="912" />
            <wire x2="912" y1="1024" y2="1152" x1="912" />
            <wire x2="1792" y1="1024" y2="1024" x1="912" />
            <wire x2="1792" y1="1024" y2="1264" x1="1792" />
            <wire x2="1888" y1="1264" y2="1264" x1="1792" />
            <wire x2="2480" y1="1024" y2="1024" x1="1792" />
            <wire x2="2480" y1="1024" y2="1088" x1="2480" />
            <wire x2="2560" y1="1088" y2="1088" x1="2480" />
        </branch>
        <branch name="XLXN_38(9:0)">
            <wire x2="1888" y1="1392" y2="1392" x1="1808" />
            <wire x2="1808" y1="1392" y2="2000" x1="1808" />
            <wire x2="3136" y1="2000" y2="2000" x1="1808" />
            <wire x2="3040" y1="1408" y2="1408" x1="3024" />
            <wire x2="3136" y1="1408" y2="1408" x1="3040" />
            <wire x2="3136" y1="1408" y2="2000" x1="3136" />
        </branch>
        <branch name="SW0">
            <wire x2="1872" y1="1328" y2="1328" x1="1856" />
            <wire x2="1888" y1="1328" y2="1328" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1328" name="SW0" orien="R180" />
        <instance x="1888" y="1552" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_40(2:0)">
            <wire x2="1616" y1="1216" y2="1216" x1="1600" />
            <wire x2="1664" y1="1216" y2="1216" x1="1616" />
            <wire x2="1664" y1="1216" y2="1520" x1="1664" />
            <wire x2="1888" y1="1520" y2="1520" x1="1664" />
        </branch>
        <branch name="XLXN_41(14:0)">
            <wire x2="2320" y1="1088" y2="1088" x1="976" />
            <wire x2="2320" y1="1088" y2="1504" x1="2320" />
            <wire x2="976" y1="1088" y2="1216" x1="976" />
            <wire x2="1008" y1="1216" y2="1216" x1="976" />
            <wire x2="1024" y1="1216" y2="1216" x1="1008" />
            <wire x2="2320" y1="1504" y2="1504" x1="2272" />
        </branch>
        <instance x="992" y="1856" name="XLXI_6" orien="R0">
        </instance>
        <branch name="ROT_A">
            <wire x2="976" y1="1632" y2="1632" x1="880" />
            <wire x2="992" y1="1632" y2="1632" x1="976" />
        </branch>
        <branch name="ROT_B">
            <wire x2="976" y1="1696" y2="1696" x1="880" />
            <wire x2="992" y1="1696" y2="1696" x1="976" />
        </branch>
        <branch name="ROT_CENTER">
            <wire x2="976" y1="1760" y2="1760" x1="880" />
            <wire x2="992" y1="1760" y2="1760" x1="976" />
        </branch>
        <iomarker fontsize="28" x="880" y="1632" name="ROT_A" orien="R180" />
        <iomarker fontsize="28" x="880" y="1696" name="ROT_B" orien="R180" />
        <iomarker fontsize="28" x="880" y="1760" name="ROT_CENTER" orien="R180" />
        <branch name="XLXN_44">
            <wire x2="1392" y1="1888" y2="1888" x1="1376" />
            <wire x2="1600" y1="1888" y2="1888" x1="1392" />
            <wire x2="1888" y1="1584" y2="1584" x1="1600" />
            <wire x2="1600" y1="1584" y2="1888" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1744" name="SW3" orien="R90" />
        <branch name="SW3">
            <wire x2="1680" y1="1728" y2="1744" x1="1680" />
            <wire x2="1872" y1="1728" y2="1728" x1="1680" />
            <wire x2="1888" y1="1712" y2="1712" x1="1872" />
            <wire x2="1872" y1="1712" y2="1728" x1="1872" />
        </branch>
        <branch name="XLXN_46(9:0)">
            <wire x2="1888" y1="1456" y2="1456" x1="1840" />
            <wire x2="1840" y1="1456" y2="1952" x1="1840" />
            <wire x2="3104" y1="1952" y2="1952" x1="1840" />
            <wire x2="3040" y1="1472" y2="1472" x1="3024" />
            <wire x2="3104" y1="1472" y2="1472" x1="3040" />
            <wire x2="3104" y1="1472" y2="1952" x1="3104" />
        </branch>
        <branch name="SW2">
            <wire x2="1888" y1="1776" y2="1776" x1="1872" />
            <wire x2="1872" y1="1776" y2="1904" x1="1872" />
            <wire x2="1936" y1="1904" y2="1904" x1="1872" />
            <wire x2="1952" y1="1904" y2="1904" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1904" name="SW2" orien="R0" />
        <branch name="XLXN_48(9:0)">
            <wire x2="1728" y1="1952" y2="1952" x1="1376" />
            <wire x2="1728" y1="1840" y2="1952" x1="1728" />
            <wire x2="1888" y1="1840" y2="1840" x1="1728" />
        </branch>
    </sheet>
</drawing>