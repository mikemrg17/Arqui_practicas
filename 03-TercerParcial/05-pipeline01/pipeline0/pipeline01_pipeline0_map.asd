[ActiveSupport MAP]
Device = LCMXO2-7000HE;
Package = TQFP144;
Performance = 5;
LUTS_avail = 6864;
LUTS_used = 170;
FF_avail = 6979;
FF_used = 148;
INPUT_LVCMOS25 = 16;
OUTPUT_LVCMOS25 = 24;
IO_avail = 115;
IO_used = 40;
EBR_avail = 26;
EBR_used = 1;
; Begin EBR Section
Instance_Name = FSM02/memEBR00_0_0_0;
Type = DP8KC;
Width_A = 8;
Depth_A = 64;
REGMODE_A = OUTREG;
REGMODE_B = NOREG;
RESETMODE = SYNC;
ASYNC_RESET_RELEASE = SYNC;
WRITEMODE_A = NORMAL;
WRITEMODE_B = NORMAL;
GSR = DISABLED;
MEM_INIT_FILE = datapipeline01.mem;
MEM_LPC_FILE = memEBR00.lpc;
; End EBR Section
