
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:062default:default2
394.5902default:default2
55.0902default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/utils_1/imports/synth_1/ALU1.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2}
iC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/utils_1/imports/synth_1/ALU1.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
v
Command: %s
53*	vivadotcl2E
1synth_design -top TopEntity -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
136602default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2T
>F:/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1205.918 ; gain = 408.762
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
	TopEntity2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
432default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
mono_pulse_generator2default:default2�
oC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/mono_pulse_generator.vhd2default:default2
362default:default2"
DebouncerCount2default:default2(
mono_pulse_generator2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1152default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
mono_pulse_generator2default:default2�
oC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/mono_pulse_generator.vhd2default:default2
422default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
mono_pulse_generator2default:default2
02default:default2
12default:default2�
oC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/mono_pulse_generator.vhd2default:default2
422default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
mono_pulse_generator2default:default2�
oC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/mono_pulse_generator.vhd2default:default2
362default:default2"
DebouncerReset2default:default2(
mono_pulse_generator2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1162default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PC2default:default2q
]C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/PC.vhd2default:default2
352default:default2"
ProgramCounter2default:default2
PC2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1172default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
PC2default:default2s
]C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/PC.vhd2default:default2
422default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
PC2default:default2
02default:default2
12default:default2s
]C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/PC.vhd2default:default2
422default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
InstructionRegister2default:default2�
nC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/InstructionRegister.vhd2default:default2
362default:default2"
InstructionReg2default:default2'
InstructionRegister2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1182default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2'
InstructionRegister2default:default2�
nC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/InstructionRegister.vhd2default:default2
412default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
InstructionRegister2default:default2
02default:default2
12default:default2�
nC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/InstructionRegister.vhd2default:default2
412default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ControlUnit2default:default2z
fC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ControlUnit.vhd2default:default2
342default:default2#
MainControlUnit2default:default2
ControlUnit2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1192default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ControlUnit2default:default2|
fC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ControlUnit.vhd2default:default2
422default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ControlUnit2default:default2
02default:default2
12default:default2|
fC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ControlUnit.vhd2default:default2
422default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ALU12default:default2s
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU1.vhd2default:default2
372default:default2
ALU_I2default:default2
ALU12default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1202default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ALU12default:default2u
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU1.vhd2default:default2
452default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU12default:default2
02default:default2
12default:default2u
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU1.vhd2default:default2
452default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ALU22default:default2s
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU2.vhd2default:default2
362default:default2
ALU_II2default:default2
ALU22default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1222default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ALU22default:default2u
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU2.vhd2default:default2
442default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
temp2default:default2u
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU2.vhd2default:default2
482default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	resultaux2default:default2u
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU2.vhd2default:default2
482default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU22default:default2
02default:default2
12default:default2u
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU2.vhd2default:default2
442default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

Acumulator2default:default2y
eC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/Acumulator.vhd2default:default2
352default:default2
Acumulat2default:default2

Acumulator2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1312default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

Acumulator2default:default2{
eC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/Acumulator.vhd2default:default2
442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

Acumulator2default:default2
02default:default2
12default:default2{
eC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/Acumulator.vhd2default:default2
442default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SSD2default:default2r
^C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/SSD.vhd2default:default2
362default:default2
SSD12default:default2
SSD2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1402default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
SSD2default:default2t
^C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/SSD.vhd2default:default2
432default:default8@Z8-638h px� 
�
default block is never used226*oasys2t
^C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/SSD.vhd2default:default2
802default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SSD2default:default2
02default:default2
12default:default2t
^C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/SSD.vhd2default:default2
432default:default8@Z8-256h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
sw2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1422default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
AluRes2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1422default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
BInput2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1422default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	TopEntity2default:default2
02default:default2
12default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
432default:default8@Z8-256h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[16]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[15]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[14]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[13]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[12]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[11]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[10]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[9]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[8]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[7]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[6]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[5]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[4]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[3]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[2]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[1]2default:default2
ControlUnit2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[4]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[2]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1296.941 ; gain = 499.785
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1296.941 ; gain = 499.785
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1296.941 ; gain = 499.785
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1296.9412default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
282default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
282default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
292default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
292default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
302default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
302default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
312default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
312default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
322default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
322default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
332default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
332default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
342default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
342default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
352default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
352default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
362default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
362default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
372default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
372default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
382default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
382default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
392default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
392default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
402default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
402default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
412default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
412default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
422default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
422default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
432default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
432default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[8]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
632default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
632default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[8]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
642default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
642default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[9]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
652default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
652default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[9]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
662default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
662default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[10]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
672default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
672default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[10]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
682default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
682default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[11]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
692default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
692default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[11]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
702default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
702default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[12]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
712default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
712default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[12]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
722default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
722default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[13]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
732default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
732default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[13]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
742default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
742default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[14]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
752default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
752default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[14]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
762default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
762default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[15]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
772default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
772default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led[15]2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
782default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2
782default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2y
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2w
cC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/constrs_1/new/constr_1.xdc2default:default2/
.Xil/TopEntity_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1388.1372default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1388.1372default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2T
>F:/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
!inferring latch for variable '%s'327*oasys2
temp_reg2default:default2u
_C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/ALU2.vhd2default:default2
522default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
led_reg2default:default2z
dC:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.srcs/sources_1/new/TopEntity.vhd2default:default2
1512default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	  17 Input   21 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[7]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[6]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[5]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[4]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[3]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[2]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[1]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[4]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[2]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2default:default2
	TopEntity2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    35|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     3|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    20|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    45|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    48|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    54|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    64|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |    12|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |    22|
2default:defaulth px� 
D
%s*synth2,
|11    |LD     |     9|
2default:defaulth px� 
D
%s*synth2,
|12    |IBUF   |     5|
2default:defaulth px� 
D
%s*synth2,
|13    |OBUF   |    12|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUFT  |     7|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 19 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 1388.137 ; gain = 499.785
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1388.137 ; gain = 590.980
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1388.1372default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
442default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
82default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1388.1372default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
r  A total of 9 instances were transformed.
  LD => LDCE: 1 instance 
  LD => LDCE (inverted pins: G): 8 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
38b39a282default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
512default:default2
812default:default2
322default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:452default:default2
00:00:462default:default2
1388.1372default:default2
968.6912default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2r
^C:/Users/bogdi/OneDrive/Desktop/SCS/Project/Proiect_SCS/Proiect_SCS.runs/synth_1/TopEntity.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file TopEntity_utilization_synth.rpt -pb TopEntity_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jan 16 12:09:48 20242default:defaultZ17-206h px� 


End Record