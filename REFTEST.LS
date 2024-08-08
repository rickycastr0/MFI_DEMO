/PROG  REFTEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 703;
CREATE		= DATE 24-07-30  TIME 10:58:24;
MODIFIED	= DATE 24-08-07  TIME 13:09:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1195;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  ARC Welding Equipment : 1,*,*,*,*;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
   1:  R[56:COUNT]=0    ;
   2:  R[50:ClearenceHt]=30    ;
   3:  R[52:Start X]=PR[50,1:Vtx1]    ;
   4:  R[53:End X]=PR[52,1:Vtx2]    ;
   5:  R[54:DELTA X]=R[53:End X]-R[52:Start X]    ;
   6:  R[55:X PASSES]=R[54:DELTA X] DIV R[51:X STEP]    ;
   7:   ;
   8:  !ABS ;
   9:  IF R[55:X PASSES]>0,JMP LBL[2] ;
  10:  R[51:X STEP]=R[51:X STEP]*(-1)    ;
  11:  R[55:X PASSES]=0-R[55:X PASSES]    ;
  12:   ;
  13:  LBL[2] ;
  14:  PR[52,1:Vtx2]=PR[50,1:Vtx1]    ;
  15:   ;
  16:  R[59:CURR LAYER]=1    ;
  17:   ;
  18:  PR[52,3:Vtx2]=PR[50,3:Vtx1]    ;
  19:   ;
  20:  PR[51:Clear1]=PR[50:Vtx1]    ;
  21:  PR[51,3:Clear1]=PR[51,3:Clear1]+R[50:ClearenceHt]    ;
  22:  PR[53:Clear2]=PR[52:Vtx2]    ;
  23:  PR[53,3:Clear2]=PR[52,3:Vtx2]+R[50:ClearenceHt]    ;
  24:  R[57:CURR X]=R[52:Start X]    ;
  25:   ;
  26:   ;
  27:   ;
  28:   ;
  29:   ;
  30:   ;
  31:   ;
  32:   ;
  33:   ;
  34:   ;
  35:   ;
/POS
/END
