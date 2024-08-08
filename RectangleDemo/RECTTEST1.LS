/PROG  RECTTEST1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 931;
CREATE		= DATE 24-07-31  TIME 13:25:26;
MODIFIED	= DATE 24-08-08  TIME 11:41:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 51;
MEMORY_SIZE	= 1367;
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
/MN
   1:  R[58:LAYERS]=2    ;
   2:  !STEP ON ;
   3:  !SET 1ST POINT ;
   4:  PR[50:Vtx1]=LPOS    ;
   5:  !SET 2ND POINT ;
   6:  PR[52:Vtx2]=LPOS    ;
   7:  !STEP OFF ;
   8:   ;
   9:  CALL REFTEST    ;
  10:  LBL[2] ;
  11:   ;
  12:  IF R[59:CURR LAYER]>R[58:LAYERS],JMP LBL[3] ;
  13:   ;
  14:  R[57:CURR X]=R[52:Start X]    ;
  15:   ;
  16:   ;
  17:   ;
  18:   ;
  19:  FOR R[56:COUNT]=0 TO R[55:X PASSES] ;
  20:   ;
  21:  PR[50,1:Vtx1]=R[57:CURR X]    ;
  22:  PR[51,1:Clear1]=R[57:CURR X]    ;
  23:  PR[52,1:Vtx2]=R[57:CURR X]    ;
  24:  PR[53,1:Clear2]=R[57:CURR X]    ;
  25:   ;
  26:J PR[51:Clear1] 100% FINE    ;
  27:J PR[50:Vtx1] 100% FINE    ;
  28:   ;
  29:L PR[50:Vtx1] 4000mm/sec FINE    ;
  30:L PR[52:Vtx2] 100mm/sec FINE    ;
  31:   ;
  32:J PR[53:Clear2] 100% FINE    ;
  33:   ;
  34:   ;
  35:  R[57:CURR X]=R[57:CURR X]+R[51:X STEP]    ;
  36:   ;
  37:   ;
  38:   ;
  39:   ;
  40:   ;
  41:   ;
  42:   ;
  43:  ENDFOR ;
  44:  PR[50,3:Vtx1]=R[60:DELTA Z]+PR[50,3:Vtx1]    ;
  45:  PR[51,3:Clear1]=PR[51,3:Clear1]+R[60:DELTA Z]    ;
  46:  PR[52,3:Vtx2]=R[60:DELTA Z]+PR[52,3:Vtx2]    ;
  47:  PR[53,3:Clear2]=R[60:DELTA Z]+PR[53,3:Clear2]    ;
  48:  R[59:CURR LAYER]=R[59:CURR LAYER]+1    ;
  49:  JMP LBL[2] ;
  50:  LBL[3] ;
  51:   ;
/POS
/END
