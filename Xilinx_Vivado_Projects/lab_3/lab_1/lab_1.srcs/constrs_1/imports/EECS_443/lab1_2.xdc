## Switches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {A}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A}]
#Bank = 34, Pin name = IO_25_34,							Sch name = SW1
set_property PACKAGE_PIN U8 [get_ports {B}]	
	set_property IOSTANDARD LVCMOS33 [get_ports {B}]
	## LEDs
    #Bank = 34, Pin name = IO_L24N_T3_34,                        Sch name = LED0
    set_property PACKAGE_PIN T8 [get_ports {S}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {S}]
    #Bank = 34, Pin name = IO_L21N_T3_DQS_34,                    Sch name = LED1
    set_property PACKAGE_PIN V9 [get_ports {C}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {C}]